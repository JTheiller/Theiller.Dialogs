unit Theiller.Dialogs.Timer;

interface

uses
  Theiller.Dialogs.Lib;

const
  MB_TIMEDOUT = 32000;

type
  TMessageTimer = class
  private
    FSecondsTimer: Integer;
    FHeader: String;
    FMessageBox: String;
    FFlags: Integer;
    function Execute: Integer;
  public
    class function MessageBox(const SecondsTimer: Integer; const Text, Caption: PChar;
      Flags: Longint): Integer;
  end;

implementation

uses
  Forms, Windows;

class function TMessageTimer. MessageBox(const SecondsTimer: Integer;
  const Text, Caption: PChar; Flags: Integer): Integer;
begin
  with TMessageTimer.Create do
  begin
    try
      FSecondsTimer := SecondsTimer;
      FHeader       := Caption;
      FMessageBox   := Text;
      FFlags        := Flags;

      Result := Execute;
    finally
      Free;
    end;
  end;
end;

{ TMessageTime }

function TMessageTimer.Execute: Integer;
begin
  Result := MessageBoxTimeout(Application.Handle,PChar(FMessageBox), PChar(FHeader)
                             ,FFlags or MB_SETFOREGROUND or MB_SYSTEMMODAL
                             , 0, FSecondsTimer * 1000);
end;

end.
