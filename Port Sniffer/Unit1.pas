unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Buttons, ExtCtrls, psApi, ComCtrls, IniFiles,
  TlHelp32, Spin;

type
  TForm1 = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    RadioGroup1: TRadioGroup;
    GroupBox5: TGroupBox;
    Timer1: TTimer;
    CheckBox17: TCheckBox;
    SpeedButton2: TSpeedButton;
    StatusBar1: TStatusBar;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    GroupBox7: TGroupBox;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    GroupBox9: TGroupBox;
    SpinEdit2: TSpinEdit;
    Edit3: TEdit;
    ComboBox3: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit4: TEdit;
    SpinEdit1: TSpinEdit;
    Label12: TLabel;
    GroupBox10: TGroupBox;
    CheckBox20: TCheckBox;
    ScrollBar1: TScrollBar;
    Label13: TLabel;
    GroupBox11: TGroupBox;
    ScrollBar2: TScrollBar;
    Label14: TLabel;
    CheckBox21: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    Label15: TLabel;
    Image1: TImage;
    CheckBox16: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure CheckBox19Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure CheckBox20Click(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure WriteOptions;
    procedure ReadOptions;
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  TIF : TIniFile;

implementation

uses UnitMain;

{$R *.dfm}
function GetApplicationDirectory: string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm1.WriteOptions;    // ################### Options Write
var
  OPT :string;
begin
   OPT := 'Options';

   //if not DirectoryExists(GetApplicationDirectory + 'Data\Options\')
   //then ForceDirectories(GetApplicationDirectory + 'Data\Options\');

   TIF := TIniFile.Create(GetApplicationDirectory + 'Data\Options\Process.ini');
   with TIF do
   begin
     WriteBool(OPT,'MemoryDoubleBuffered',CheckBox18.Checked);
     WriteBool(OPT,'TrimAppSize',CheckBox17.Checked);
     WriteInteger(OPT,'PriorityProcess',RadioGroup1.ItemIndex);
     WriteBool(OPT,'CPULoad',CheckBox16.Checked);
     WriteBool(OPT,'2GBReport',CheckBox19.Checked);
     WriteInteger(OPT,'Browser',ComboBox1.ItemIndex);
     WriteBool(OPT,'URG',CheckBox4.Checked);
     WriteBool(OPT,'ACK',CheckBox5.Checked);
     WriteBool(OPT,'PSH',CheckBox6.Checked);
     WriteBool(OPT,'RST',CheckBox7.Checked);
     WriteBool(OPT,'SYN',CheckBox8.Checked);
     WriteBool(OPT,'FIN',CheckBox9.Checked);
     WriteBool(OPT,'TCP',CheckBox3.Checked);
     WriteBool(OPT,'IP',CheckBox2.Checked);
     WriteBool(OPT,'Date',CheckBox1.Checked);
     WriteString(OPT,'Start',Edit1.Text);
     WriteString(OPT,'End',Edit2.Text);
     WriteBool(OPT,'AllPorts',RadioButton1.Checked);
     WriteBool(OPT,'EditPorts',RadioButton2.Checked);
     WriteInteger(OPT,'Protocol',ComboBox3.ItemIndex);
     WriteString(OPT,'PingPort',Edit3.Text);
     WriteString(OPT,'PingBuffer',Edit4.Text);
     WriteInteger(OPT,'PingTimeout',SpinEdit2.Value);
     WriteInteger(OPT,'PingCount',SpinEdit1.Value);
     WriteBool(OPT,'Report',CheckBox20.Checked);
     WriteInteger(OPT,'ReportInterval',ScrollBar1.Position);
     WriteInteger(OPT,'SnifferSpeed',ScrollBar2.Position);
     WriteBool(OPT,'Outbound',CheckBox21.Checked);
     Free;
   end;
end;

procedure TForm1.ReadOptions;    // ################### Options Read
var
  OPT:string;
begin
  OPT := 'Options';
  if FileExists(GetApplicationDirectory + 'Data\Options\Process.ini') then
  begin
    TIF:=TIniFile.Create(GetApplicationDirectory + 'Data\Options\Process.ini');
    with TIF do
    begin
      CheckBox18.Checked:=ReadBool(OPT,'MemoryDoubleBuffered',CheckBox18.Checked);
      CheckBox17.Checked:=ReadBool(OPT,'TrimAppSize',CheckBox17.Checked);
      RadioGroup1.ItemIndex:=ReadInteger(OPT,'PriorityProcess',RadioGroup1.ItemIndex);
      CheckBox16.Checked:=ReadBool(OPT,'CPULoad',CheckBox16.Checked);
      CheckBox19.Checked:=ReadBool(OPT,'2GBReport',CheckBox19.Checked);
      ComboBox1.ItemIndex:=ReadInteger(OPT,'Browser',ComboBox1.ItemIndex);
      CheckBox4.Checked:=ReadBool(OPT,'URG',CheckBox4.Checked);
      CheckBox5.Checked:=ReadBool(OPT,'ACK',CheckBox5.Checked);
      CheckBox6.Checked:=ReadBool(OPT,'PSH',CheckBox6.Checked);
      CheckBox7.Checked:=ReadBool(OPT,'RST',CheckBox7.Checked);
      CheckBox8.Checked:=ReadBool(OPT,'SYN',CheckBox8.Checked);
      CheckBox9.Checked:=ReadBool(OPT,'FIN',CheckBox9.Checked);
      CheckBox3.Checked:=ReadBool(OPT,'TCP',CheckBox3.Checked);
      CheckBox2.Checked:=ReadBool(OPT,'IP',CheckBox2.Checked);
      CheckBox1.Checked:=ReadBool(OPT,'Date',CheckBox1.Checked);
      Edit1.Text:=ReadString(OPT,'Start',Edit1.Text);
      Edit2.Text:=ReadString(OPT,'End',Edit2.Text);
      RadioButton1.Checked:=ReadBool(OPT,'AllPorts',RadioButton1.Checked);
      RadioButton2.Checked:=ReadBool(OPT,'EditPorts',RadioButton2.Checked);
      ComboBox3.ItemIndex:=ReadInteger(OPT,'Protocol',ComboBox3.ItemIndex);
      Edit3.Text:=ReadString(OPT,'PingPort',Edit3.Text);
      Edit4.Text:=ReadString(OPT,'PingBuffer',Edit4.Text);
      SpinEdit2.Value:=ReadInteger(OPT,'PingTimeout',SpinEdit2.Value);
      SpinEdit1.Value:=ReadInteger(OPT,'PingCount',SpinEdit1.Value);
      CheckBox20.Checked:=ReadBool(OPT,'Report',CheckBox20.Checked);
      ScrollBar1.Position:=ReadInteger(OPT,'ReportInterval',ScrollBar1.Position);
      ScrollBar2.Position:=ReadInteger(OPT,'SnifferSpeed',ScrollBar2.Position);
      CheckBox21.Checked:=ReadBool(OPT,'Outbound',CheckBox21.Checked);

      Free;
    end;
  end;
end;

function IsExeRunning(const AExeName: string): boolean;
var
  h: THandle;
  p: TProcessEntry32;
begin
  Result := False;

  p.dwSize := SizeOf(p);
  h := CreateToolHelp32Snapshot(TH32CS_SnapProcess, 0);
  try
    Process32First(h, p);
    repeat
      Result := AnsiUpperCase(AExeName) = AnsiUpperCase(p.szExeFile);
    until Result or (not Process32Next(h, p));
  finally
    CloseHandle(h);
  end;
end;

function CalcCPUSpeed: Extended;
const
  DelayTime = 100;
var
  TimerHi, TimerLo: DWord;
  PriorityClass, Priority: Integer;
begin
  try
    PriorityClass := GetPriorityClass(GetCurrentProcess);
    Priority := GetThreadPriority(GetCurrentThread);
    SetPriorityClass(GetCurrentProcess, REALTIME_PRIORITY_CLASS);
    SetThreadPriority(GetCurrentThread,
                      THREAD_PRIORITY_TIME_CRITICAL);
    try
      Sleep(10);
      asm
        dw 310Fh 
        mov TimerLo, eax
        mov TimerHi, edx
      end;
      Sleep(DelayTime);
      asm
        dw 310Fh // rdtsc
        sub eax, TimerLo
        sbb edx, TimerHi
        mov TimerLo, eax
        mov TimerHi, edx
      end;
    finally
      SetThreadPriority(GetCurrentThread, Priority);
      SetPriorityClass(GetCurrentProcess, PriorityClass);
    end;
    Result := TimerLo / (1000.0 * DelayTime);
  except
    Result := 0;
  end;
end;

procedure TrimAppMemorySize;
 var
   MainHandle : THandle;
 begin
   try
     MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
     SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
     CloseHandle(MainHandle) ;
   except
   end;
   Application.ProcessMessages;
 end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := false;
  WriteOptions;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
   SpeedButton2.Enabled := true;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ReadOptions;
  ComboBox1.OnChange(sender);
  CheckBox20.OnClick(sender);
  ScrollBar1.OnChange(sender);
  ScrollBar2.OnChange(sender);
  CheckBox3.OnClick(sender);
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
   SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
   if CheckBox3.Checked = true then
   begin
    CheckBox4.Enabled := true;
    CheckBox5.Enabled := true;
    CheckBox6.Enabled := true;
    CheckBox7.Enabled := true;
    CheckBox8.Enabled := true;
    CheckBox9.Enabled := true;
   end else begin
    CheckBox4.Enabled := false;
    CheckBox5.Enabled := false;
    CheckBox6.Enabled := false;
    CheckBox7.Enabled := false;
    CheckBox8.Enabled := false;
    CheckBox9.Enabled := false;
   end;

   SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
   SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
   SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
   SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
   SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
   SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox9Click(Sender: TObject);
begin
   SpeedButton2.Enabled := true;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
  begin
    Edit1.Text := '1';
    Edit2.Text := '65535';
    Label1.Enabled := false;
    Label2.Enabled := false;
    Edit1.Enabled := false;
    Edit2.Enabled := false;
  end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked = true then
  begin
    Label1.Enabled := true;
    Label2.Enabled := true;
    Edit1.Enabled := true;
    Edit2.Enabled := true;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  StatusBar1.Panels[3].Text := FloatToStr(CalcCPUSpeed) + ' Hz';

  CheckBox4.Hint := 'The URG flag is used to inform a receiving' +#13+
                    'station that certain data within a segment' +#13+
                    'is urgent and should be prioritized.';
  CheckBox6.Hint := 'To understand the function of the PSH flag,' +#13+
                    'we first need to understand how TCP buffers' +#13+
                    'Data. TCP operates at layer four of the' +#13+
                    'OSI model.';
  CheckBox18.Hint := 'Double buffering is a computer method in ' + #10#13 +
                     'which a data buffer that is written and read simultaneously is ' + #10#13 +
                     'executed twice in order to avoid mutual interference.';
  CheckBox17.Hint := 'The Trim Memory feature reduces the memory ' + #10#13 +
                     'that BlueStacks 5 uses on your PC. For example, ' + #10#13 +
                     'if you have performance or lag issues, ' + #13#10 +
                     'Trim-Memory can help you resolve these issues.';

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Timer1.Enabled := false;
  Form1.Close();
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
const
  Priority : array[0..3] of integer = (IDLE_PRIORITY_CLASS,
                                       NORMAL_PRIORITY_CLASS,
                                       HIGH_PRIORITY_CLASS,
                                       REALTIME_PRIORITY_CLASS);
      PLevels  : array[0..3] of byte    = (4, 8, 13, 24);
begin
  SetPriorityClass(GetCurrentProcess, Priority[(Sender as TRadioGroup).Tag]);
  if RadioGroup1.ItemIndex = 0 then begin RadioGroup1.Tag := 0; end;
  if RadioGroup1.ItemIndex = 1 then begin RadioGroup1.Tag := 1; end;
  if RadioGroup1.ItemIndex = 2 then begin RadioGroup1.Tag := 2; end;
  if RadioGroup1.ItemIndex = 3 then begin RadioGroup1.Tag := 3; end;
   SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox16Click(Sender: TObject);
var
  H : THandle;
begin
  if CheckBox16.Checked = true then begin
  H := GetCurrentProcess();
  SetPriorityClass(H,REALTIME_PRIORITY_CLASS); end;
  SpeedButton2.Enabled := true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  pmc: PPROCESS_MEMORY_COUNTERS;
  cb: Integer;
begin
  cb := SizeOf(_PROCESS_MEMORY_COUNTERS);
  GetMem(pmc, cb);
  pmc^.cb := cb;
  if GetProcessMemoryInfo(GetCurrentProcess(), pmc, cb) then
  StatusBar1.Panels[1].Text := (IntToStr(pmc^.WorkingSetSize div 10000) + ' Kb')
  else
  StatusBar1.Panels[1].Text := 'Unable to get process info';
  FreeMem(pmc);

  if CheckBox17.Checked = true then begin TrimAppMemorySize; end;
end;

procedure TForm1.CheckBox18Click(Sender: TObject);
begin
  if CheckBox18.Checked = true then
  begin
    MainForm.Panel2.DoubleBuffered := true;
    MainForm.Panel1.DoubleBuffered := true;
  end  else begin
    MainForm.Panel2.DoubleBuffered := false;
    MainForm.Panel1.DoubleBuffered := false;
  end;
  SpeedButton2.Enabled := true;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  WriteOptions; SpeedButton2.Enabled := false;
end;

procedure TForm1.CheckBox17Click(Sender: TObject);
begin
  SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox19Click(Sender: TObject);
begin
  if CheckBox19.Checked = true then MainForm.Memo1.MaxLength := $7FFFFFF0;
  SpeedButton2.Enabled := true;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  // brave browser
  if ComboBox1.ItemIndex = 0 then
  begin
    try
      Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\brave.ico');
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;

    if IsExeRunning('Brave.exe') then
    begin
        Label7.Caption := 'Found!';
        Label7.Font.Color := clGreen;
        MainForm.StatusBar1.Panels[5].Text := 'Brave Browser';
      end else begin
        Label7.Caption := 'not Found!';
        Label7.Font.Color := clMaroon;
        MainForm.StatusBar1.Panels[5].Text := 'Brave Browser not found.';
    end;
  end;

  // ccleaner browser
  if ComboBox1.ItemIndex = 1 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\ccleaner.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('CCleanerBrowser.exe') then
  begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'CCleaner Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'CCleaner not found.';
    end;
  end;

  // chrome browser
  if ComboBox1.ItemIndex = 2 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\chrome.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('chrome.exe') then
  begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Chrome Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Chrome not found.';
    end;
  end;

  // comodo browser
  if ComboBox1.ItemIndex = 3 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\comodo.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('dragon.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Comodo Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Comodo not found.';
    end;
  end;

  // epic browser
  if ComboBox1.ItemIndex = 4 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\epic.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('epic.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Epic Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Epic not found.';
    end;
  end;

  // firefox browser
  if ComboBox1.ItemIndex = 5 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\ff.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('firefox.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Firefox Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Firefox not found.';
    end;
  end;

  // internet explorer browser
  if ComboBox1.ItemIndex = 6 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\internet_explorer.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('iexplore.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'IExplorer Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'IExplorer not found.';
    end;
  end;

  // iridium browser
  if ComboBox1.ItemIndex = 7 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\iridium.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('iridium.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Iridium Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Iridium not found.';
    end;
  end;

  // maxthon browser
  if ComboBox1.ItemIndex = 8 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\Maxthon.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('maxthon.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Maxthon Browser';
    end else begin
      Label7.Caption := 'not Found!'; Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Maxthon not found.';
    end;
  end;

  // opera browser
  if ComboBox1.ItemIndex = 9 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\opera.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('opera.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Opera Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Opera not found.';
    end;
  end;

  // palemoon browser
  if ComboBox1.ItemIndex = 10 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\palemoon.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('palemoon.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Palemoon Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Palemoon not found.';
    end;
  end;

  // safari browser
  if ComboBox1.ItemIndex = 11 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\safari.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('safari.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Safari Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Safari not found.';
    end;
  end;

  // tor browser
  if ComboBox1.ItemIndex = 12 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\tor.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('firefox.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Tor Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Tor not found.';
    end;
  end;

  // urbrowser browaer
  if ComboBox1.ItemIndex = 13 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\ur.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;
  if IsExeRunning('urbrowser.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'UR Browser found.';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'UR Browser not found.';
    end;
  end;

  // vivaldi browser
  if ComboBox1.ItemIndex = 14 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\vivaldi.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('vivaldi.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Vivaldi Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Vivaldi not found.';
    end;
  end;

  // waterfox browser
  if ComboBox1.ItemIndex = 15 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\waterfox.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('waterfox.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Waterfox Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Waterfox not found.';
    end;
  end;

  // yandex browser
  if ComboBox1.ItemIndex = 16 then
  begin
  try
    Image1.Picture.LoadFromFile(GetApplicationDirectory + 'Data\gfx\yandex.ico');
  except
    on E: Exception do
        ShowMessage(E.Message);
  end;

  if IsExeRunning('browser.exe') then
    begin
      Label7.Caption := 'Found!';
      Label7.Font.Color := clGreen;
      MainForm.StatusBar1.Panels[5].Text := 'Yandex Browser';
    end else begin
      Label7.Caption := 'not Found!';
      Label7.Font.Color := clMaroon;
      MainForm.StatusBar1.Panels[5].Text := 'Yandex not found.';
    end;
  end;
  Application.ProcessMessages;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  if StrToInt(Edit3.Text) > 65535 then Edit3.Text := '65535';
  SpeedButton2.Enabled := true;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
  SpeedButton2.Enabled := true;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  SpeedButton2.Enabled := true;
end;

procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
  SpeedButton2.Enabled := true;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  SpeedButton2.Enabled := true;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Label13.Caption := 'Sec : ' + IntToStr(ScrollBar1.Position div 1000);
  SpeedButton2.Enabled := true;
end;

procedure TForm1.CheckBox20Click(Sender: TObject);
begin
  if CheckBox20.Checked = true then begin
  MainForm.Timer2.Interval := ScrollBar1.Position;
  Label13.Enabled := true;
  end else begin
  Label13.Enabled := false;
  end;
  SpeedButton2.Enabled := true;
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
  Label14.Caption := 'Sec.: ' + IntToStr(ScrollBar2.Position div 1000);
  MainForm.TimerInData.Interval := ScrollBar2.Position;
end;

end.
