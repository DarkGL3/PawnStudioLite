unit ScrollBoxEx; // by Jens Schumann, thanks!

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

Const
  CM_SCROLLBOXEXVERTSCROLL  = WM_USER+512;
  CM_SCROLLBOXEXHORIZSCROLL = WM_USER+513;

type

  TScrollEvent = procedure (Sender : TObject; Position : Integer) of Object;

  TScrollBoxEx = class(TScrollBox)
  private
    FOnVScroll : TScrollEvent;
    FGroupIndex: Integer;
    fOnHScroll: TScrollEvent;
    procedure SetGroupIndex(const Value: Integer);
    procedure WMHScroll(var Message: TWMHScroll); message WM_HSCROLL;
    procedure WMVScroll(var Message: TWMVScroll); message WM_VSCROLL;
    procedure CMSCROLLBOXEXVERTSCROLL(var Message: TMessage); message CM_SCROLLBOXEXVERTSCROLL;
    procedure CMSCROLLBOXEXHORIZSCROLL(var Message: TMessage); message CM_SCROLLBOXEXHORIZSCROLL;
  public
    constructor Create(AOwner : TComponent); override;
  published
    property GroupIndex : Integer read FGroupIndex write SetGroupIndex default 0;
    property OnVScroll : TScrollEvent read fOnVScroll write fOnVScroll;
    property OnHScroll : TScrollEvent read fOnHScroll write fOnHScroll;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Standard', [TScrollBoxEx]);
end;

{ TScrollBoxEx }

constructor TScrollBoxEx.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  FGroupIndex:=0;
  fOnVScroll:=Nil;
end;

procedure TScrollBoxEx.SetGroupIndex(const Value: Integer);
begin
  FGroupIndex := Value;
end;

procedure TScrollBoxEx.WMHScroll(var Message: TWMHScroll);
var
  Msg: TMessage;
begin
  inherited;
  If Assigned(fOnHScroll) then
    fOnHScroll(Self,Message.Pos);
  If (Message.ScrollCode = SB_THUMBTRACK) Then
    HorzScrollBar.Position := Message.Pos;
  if (FGroupIndex <> 0) and (Parent <> nil) then begin
    Msg.Msg := CM_SCROLLBOXEXHORIZSCROLL;
    Msg.WParam := FGroupIndex;
    Msg.LParam := Longint(Self);
    Msg.Result := 0;
    Parent.Broadcast(Msg);
  end;
end;

procedure  TScrollBoxEx.WMVScroll(var Message: TWMVScroll);
var
  Msg: TMessage;
begin
  inherited;
  If Assigned(fOnVScroll) then
    fOnVScroll(Self,Message.Pos);
  If (Message.ScrollCode = SB_THUMBTRACK) Then
    VertScrollBar.Position := Message.Pos;
  if (FGroupIndex <> 0) and (Parent <> nil) then begin
    Msg.Msg := CM_SCROLLBOXEXVERTSCROLL;
    Msg.WParam := FGroupIndex;
    Msg.LParam := Longint(Self);
    Msg.Result := 0;
    Parent.Broadcast(Msg);
  end;
end;

procedure TScrollBoxEx.CMSCROLLBOXEXVERTSCROLL(var Message: TMessage);
var
  Sender: TScrollBoxEx;
begin
  inherited;
  If FGroupIndex <=0 then Exit;
  if Message.WParam = FGroupIndex then begin
    Sender := TScrollBoxEx(Message.LParam);
    if Sender <> Self then
      VertScrollBar.Position:=Sender.VertScrollBar.Position;
  end;
end;

procedure TScrollBoxEx.CMSCROLLBOXEXHORIZSCROLL(var Message: TMessage);
var
  Sender: TScrollBoxEx;
begin
  inherited;
  If FGroupIndex<=0 then Exit;
  if Message.WParam = FGroupIndex then begin
    Sender := TScrollBoxEx(Message.LParam);
    if Sender <> Self then
      HorzScrollBar.Position:=Sender.HorzScrollBar.Position;
  end;
end;

end. 
