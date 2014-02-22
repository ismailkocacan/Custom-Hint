unit UnitCustomHintButton;

interface

uses

   StdCtrls
  ,Controls
  ,UnitExtHint
  ;

type

  TCustomHintButton = class(TButton)
  protected
    procedure CMHintShow(var Message: TCMHintShow); message CM_HINTSHOW;
  end;

implementation


{ TCustomHintButton }
procedure TCustomHintButton.CMHintShow(var Message: TCMHintShow);
begin
  if Message.HintInfo.HintControl=Self then
    Message.HintInfo.HintWindowClass := TExHint;
end;

end.
