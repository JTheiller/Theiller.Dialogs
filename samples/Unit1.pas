unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Theiller.Dialogs.Timer;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TMessageTimer.MessageBox(2,'Message text wait 2 seconds...'
    ,'Information',MB_OK + MB_ICONINFORMATION);

  case TMessageTimer.MessageBox(5,'Message text wait 5 seconds...'
    ,'Confirme',MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION)
  of
    //IDYES, MB_TIMEDOUT: ShowMessage('Yes or TimedOut');
    IDYES      : ShowMessage('Yes');
    IDNO       : ShowMessage('No');
    MB_TIMEDOUT: ShowMessage('TimedOut');
  end;
end;

end.
