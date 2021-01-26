unit Theiller.Dialogs.Lib;

interface

uses
  Windows;

  function MessageBoxTimeOut(hWnd: HWND; lpText: PChar; lpCaption: PChar;
    uType: UINT; wLanguageId: WORD; dwMilliseconds: DWORD): Integer; stdcall;
    external user32 name 'MessageBoxTimeoutA';
  function MessageBoxTimeOutA(hWnd: HWND; lpText: PChar; lpCaption: PChar;
    uType: UINT; wLanguageId: WORD; dwMilliseconds: DWORD): Integer; stdcall;
    external user32 name 'MessageBoxTimeoutA';
  function MessageBoxTimeOutW(hWnd: HWND; lpText: PWideChar; lpCaption: PWideChar;
    uType: UINT; wLanguageId: WORD; dwMilliseconds: DWORD): Integer; stdcall;
    external user32 name 'MessageBoxTimeoutW';

implementation

end.
