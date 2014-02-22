unit UnitUtil;

interface


//http://stackoverflow.com/questions/9877718/changing-component-class-at-run-time-on-demand
//Run-Time'da objenin miras aldýðý sýnýfý deðiþtirmeye yarar.
procedure PatchInstanceClass(Instance: TObject; NewClass: TClass);

implementation

procedure PatchInstanceClass(Instance: TObject; NewClass: TClass);
type
  PClass = ^TClass;
begin
  if Assigned(Instance) and Assigned(NewClass)
    and NewClass.InheritsFrom(Instance.ClassType)
    and (NewClass.InstanceSize = Instance.InstanceSize) then
  begin
    PClass(Instance)^ := NewClass;
  end;
end;

end.
