# Theiller.Dialogs

```pascal
{...}

implementation

uses
  Theiller.Dialogs.Timer;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TMessageTimer.MessageBox(2,'Message text wait 2 seconds...','Information'
    ,MB_OK + MB_ICONINFORMATION);

  case TMessageTimer.MessageBox(5,'Message text wait 5 seconds...','Confirme'
    ,MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) of
    //IDYES, MB_TIMEDOUT: ShowMessage('Yes or TimedOut');
    IDYES      : ShowMessage('Yes');
    IDNO       : ShowMessage('No');
    MB_TIMEDOUT: ShowMessage('TimedOut');
  end;
end;
```

![alt text](https://github.com/jtheiller/Theiller.Dialogs/blob/main/assets/sample1.gif?raw=true)
