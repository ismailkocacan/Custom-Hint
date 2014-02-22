unit UnitExtHint;

interface

uses
    Classes
   ,Controls
   ,Graphics;

type

  TExHint = class(THintWindow)
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{ TExHint }

constructor TExHint.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  with Canvas.Font do
  begin
    Name := 'Tahoma';
    Size := 60;
    Font.Style := [fsBold] ;
    Canvas.Brush.Color := clYellow;
  end;
end;

end.
