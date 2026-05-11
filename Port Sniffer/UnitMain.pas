unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdActns, Menus, StdCtrls, ComCtrls, ExtCtrls, Mask,
  UnitThreadSniffer, UnitPileTrame, UnitGlobal, winsock2, StrUtils, Buttons,
  IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient,
  OleCtrls, SHDocVw, USock, WinInet, IniFiles, IdTCPConnection, IdTCPClient,
  IdWhois, Winsock, ClipBrd, ShellApi,Tlhelp32, ImgList, XPMan, ToolWin,
  IPHelper, IpHlpApi;

type
  TMainForm = class(TForm)
    TimerInData: TTimer;
    PopupMenu1: TPopupMenu;
    StartSniffer1: TMenuItem;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Options1: TMenuItem;
    StatusBar1: TStatusBar;
    Save1: TMenuItem;
    Close1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Save2: TMenuItem;
    N2: TMenuItem;
    View1: TMenuItem;
    Font1: TMenuItem;
    FontDialog1: TFontDialog;
    Font2: TMenuItem;
    N3: TMenuItem;
    ColorDialog1: TColorDialog;
    Background1: TMenuItem;
    Background2: TMenuItem;
    Clearlog1: TMenuItem;
    Options2: TMenuItem;
    N4: TMenuItem;
    StatusBar2: TMenuItem;
    StartSniffer2: TMenuItem;
    Clear1: TMenuItem;
    N1: TMenuItem;
    Copy1: TMenuItem;
    StatusBar3: TMenuItem;
    Timer1: TTimer;
    IdIcmpClient1: TIdIcmpClient;
    PingRouter1: TMenuItem;
    IPs1: TMenuItem;
    N6: TMenuItem;
    oolBar1: TMenuItem;
    T1: TMenuItem;
    N5: TMenuItem;
    C1: TMenuItem;
    R1: TMenuItem;
    D1: TMenuItem;
    N7: TMenuItem;
    D2: TMenuItem;
    S1: TMenuItem;
    I1: TMenuItem;
    N8: TMenuItem;
    A1: TMenuItem;
    D3: TMenuItem;
    N9: TMenuItem;
    A2: TMenuItem;
    SocketundRouting1: TMenuItem;
    Protokollstatus1: TMenuItem;
    W1: TMenuItem;
    R2: TMenuItem;
    M1: TMenuItem;
    P1: TMenuItem;
    T2: TMenuItem;
    V1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    T3: TMenuItem;
    P2: TMenuItem;
    I2: TMenuItem;
    I3: TMenuItem;
    N12: TMenuItem;
    D4: TMenuItem;
    S2: TMenuItem;
    N13: TMenuItem;
    A3: TMenuItem;
    D5: TMenuItem;
    N14: TMenuItem;
    NetUpDown1: TMenuItem;
    SocketRouting1: TMenuItem;
    ProtokollStatus2: TMenuItem;
    WhoAmi1: TMenuItem;
    RouteStatistic1: TMenuItem;
    MACAddress1: TMenuItem;
    PortStatistic1: TMenuItem;
    C2: TMenuItem;
    R3: TMenuItem;
    Delete1: TMenuItem;
    P3: TMenuItem;
    P4: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    R4: TMenuItem;
    R5: TMenuItem;
    T4: TMenuItem;
    T5: TMenuItem;
    I4: TMenuItem;
    N17: TMenuItem;
    I5: TMenuItem;
    FindDialog1: TFindDialog;
    P5: TMenuItem;
    I6: TMenuItem;
    N18: TMenuItem;
    S3: TMenuItem;
    P6: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    I7: TMenuItem;
    N23: TMenuItem;
    I8: TMenuItem;
    I9: TMenuItem;
    C3: TMenuItem;
    T6: TMenuItem;
    D6: TMenuItem;
    N25: TMenuItem;
    B1: TMenuItem;
    N26: TMenuItem;
    W4: TMenuItem;
    P7: TMenuItem;
    P8: TMenuItem;
    P9: TMenuItem;
    I10: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    D7: TMenuItem;
    N29: TMenuItem;
    B2: TMenuItem;
    D8: TMenuItem;
    T7: TMenuItem;
    P10: TMenuItem;
    S4: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    I11: TMenuItem;
    N34: TMenuItem;
    I12: TMenuItem;
    InstalledDriversOutputList1: TMenuItem;
    W5: TMenuItem;
    P11: TMenuItem;
    P12: TMenuItem;
    P13: TMenuItem;
    N36: TMenuItem;
    Panel2: TPanel;
    H1: TMenuItem;
    Timer2: TTimer;
    HostfromIP1: TMenuItem;
    StatusBar4: TStatusBar;
    F1: TMenuItem;
    F2: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    T8: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    Memo1: TMemo;
    S5: TMenuItem;
    H2: TMenuItem;
    S6: TMenuItem;
    N24: TMenuItem;
    H3: TMenuItem;
    ImageList1: TImageList;
    WebBrowser1: TWebBrowser;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton18: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton19: TToolButton;
    ToolButton21: TToolButton;
    ToolButton20: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    Label1: TLabel;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    Label2: TLabel;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    Button1: TButton;
    ListBox1: TListBox;
    CheckBox1: TCheckBox;
    Timer3: TTimer;
    N35: TMenuItem;
    Panel1: TPanel;
    TCPStatMemo: TMemo;
    ICMPInMemo: TMemo;
    ICMPOutMemo: TMemo;
    IPStatsMemo: TMemo;
    UDPStatsMemo: TMemo;
    Panel3: TPanel;
    M2: TMenuItem;
    T9: TMenuItem;
    A4: TMenuItem;
    ARPMemo: TMemo;
    NwMemo: TMemo;
    Panel4: TPanel;
    IPForwMemo: TMemo;
    IPAddrMemo: TMemo;
    R6: TMenuItem;
    Panel5: TPanel;
    TCPMemo: TMemo;
    UDPMemo: TMemo;
    L1: TMenuItem;
    Panel6: TPanel;
    AdaptMemo: TMemo;
    IfMemo: TMemo;
    A5: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    U1: TMenuItem;
    N43: TMenuItem;
    H4: TMenuItem;
    N44: TMenuItem;
    HopsMeasurement1: TMenuItem;
    N45: TMenuItem;
    M3: TMenuItem;
    U2: TMenuItem;
    N46: TMenuItem;
    CPUDP1: TMenuItem;
    ARP1: TMenuItem;
    Routing1: TMenuItem;
    Listening1: TMenuItem;
    Adapter1: TMenuItem;
    N47: TMenuItem;
    None1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure TimerInDataTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure Font2Click(Sender: TObject);
    procedure Background1Click(Sender: TObject);
    procedure Background2Click(Sender: TObject);
    procedure Clearlog1Click(Sender: TObject);
    procedure Options2Click(Sender: TObject);
    procedure StatusBar2Click(Sender: TObject);
    procedure StartSniffer2Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure StatusBar3Click(Sender: TObject);
    procedure IdIcmpClient1Reply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
    procedure PingRouter1Click(Sender: TObject);
    procedure IPs1Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure oolBar1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure R1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure D3Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure SocketundRouting1Click(Sender: TObject);
    procedure Protokollstatus1Click(Sender: TObject);
    procedure W1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure I2Click(Sender: TObject);
    procedure I3Click(Sender: TObject);
    procedure D4Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure A3Click(Sender: TObject);
    procedure D5Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure NetUpDown1Click(Sender: TObject);
    procedure SocketRouting1Click(Sender: TObject);
    procedure ProtokollStatus2Click(Sender: TObject);
    procedure WhoAmi1Click(Sender: TObject);
    procedure RouteStatistic1Click(Sender: TObject);
    procedure MACAddress1Click(Sender: TObject);
    procedure PortStatistic1Click(Sender: TObject);
    procedure R3Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure P3Click(Sender: TObject);
    procedure P4Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure R4Click(Sender: TObject);
    procedure R5Click(Sender: TObject);
    procedure T4Click(Sender: TObject);
    procedure T5Click(Sender: TObject);
    procedure I4Click(Sender: TObject);
    procedure I5Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure I7Click(Sender: TObject);
    procedure I8Click(Sender: TObject);
    procedure I9Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure T6Click(Sender: TObject);
    procedure D6Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure P7Click(Sender: TObject);
    procedure P8Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure D7Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure T7Click(Sender: TObject);
    procedure I11Click(Sender: TObject);
    procedure I12Click(Sender: TObject);
    procedure InstalledDriversOutputList1Click(Sender: TObject);
    procedure P11Click(Sender: TObject);
    procedure P12Click(Sender: TObject);
    procedure P13Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Options1Click(Sender: TObject);
    procedure HostfromIP1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure T8Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure S5Click(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure S6Click(Sender: TObject);
    procedure H3Click(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton27Click(Sender: TObject);
    procedure StartSniffer1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Timer3Timer(Sender: TObject);
    procedure T9Click(Sender: TObject);
    procedure A4Click(Sender: TObject);
    procedure R6Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure A5Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure U1Click(Sender: TObject);
    procedure H4Click(Sender: TObject);
    procedure HopsMeasurement1Click(Sender: TObject);
    procedure U2Click(Sender: TObject);
    procedure CPUDP1Click(Sender: TObject);
    procedure ARP1Click(Sender: TObject);
    procedure Routing1Click(Sender: TObject);
    procedure Listening1Click(Sender: TObject);
    procedure Adapter1Click(Sender: TObject);
    procedure None1Click(Sender: TObject);
  private
    { Private-Deklarationen}
    FPileTrameTcp : TPileTrameTCP;
    FStart: Boolean;
    FThreadSniffer: TThreadSniffer;
    LocalIp : string;
    ExternalIp : string;
    User : string;
    ping : string;
    cmd : string;
    procedure SetStart(value: boolean);
    function  GetMyIP: String;
    function  VisuStr(const str: string; NbCar: integer):string;
    procedure disable;
    procedure enable;
    procedure DOIpStuff;
  public
    { Public-Deklarationen}
    FontSize : integer;
    FontName : string;
    FontColor : string;
    BGRColor : string;
    property Start: Boolean read Fstart write SetStart;
    procedure WriteOptions;
    procedure ReadOptions;
  end;

var
  MainForm: TMainForm;
  merk:TDatetime;
  Attempt : Byte;
  TIF : TIniFile;

  URG : integer = 0;
  ACK : integer = 0;
  PSH : integer = 0;
  RST : integer = 0;
  SYN : integer = 0;
  FIN : integer = 0;

const
  TimerID:Integer=1;

type
 TWindowPos = packed record
   hwnd: HWND; 
   hwndInsertAfter: HWND;
   x: Integer;
   y: Integer;
   cx: Integer;
   cy: Integer;
   flags: UINT;
end;

const
  MAX_ADAPTER_DESCRIPTION_LENGTH = 128; // arb.
  MAX_ADAPTER_NAME_LENGTH        = 256; // arb.
  MAX_ADAPTER_ADDRESS_LENGTH     = 8;  // arb.

type
  PIP_ADDRESS_STRING = ^IP_ADDRESS_STRING;
  IP_ADDRESS_STRING =
    packed record
      acString : array [1..16] of Char;
    end;

  PIP_MASK_STRING = ^PIP_MASK_STRING;
  IP_MASK_STRING = IP_ADDRESS_STRING;

  PIP_ADDR_STRING = ^IP_ADDR_STRING;
  IP_ADDR_STRING =
    packed record
      Next     : PIP_ADDR_STRING;
      IpAddress : IP_ADDRESS_STRING;
      IpMask   : IP_MASK_STRING;
      Context  : DWORD;
    end;

  time_t = int64;

  PIP_ADAPTER_INFO = ^IP_ADAPTER_INFO;
  IP_ADAPTER_INFO =
    packed record
      Next               : PIP_ADAPTER_INFO;
      ComboIndex         : DWORD;
      AdapterName        : array [1..MAX_ADAPTER_NAME_LENGTH+4] of Char ;
      Description        : array [1..MAX_ADAPTER_DESCRIPTION_LENGTH+4] of Char;
      AddressLength      : UINT;
      Address            : array [1..MAX_ADAPTER_ADDRESS_LENGTH] of Byte;
      Index              : DWORD;
      dwType             : UINT;
      DhcpEnabled        : UINT;
      CurrentIpAddress   : PIP_ADDR_STRING;
      IpAddressList      : IP_ADDR_STRING;
      GatewayList        : IP_ADDR_STRING;
      DhcpServer         : IP_ADDR_STRING;
      HaveWins           : Boolean;
      PrimaryWinsServer  : IP_ADDR_STRING;
      SecondaryWinsServer : IP_ADDR_STRING;
      LeaseObtained      : time_t;
      LeaseExpires       : time_t;
    end;

function GetAdaptersInfo(const pAdapterInfo : PIP_ADAPTER_INFO;
        const pOutBufLen : PULONG) : DWORD; stdcall;
        external 'IPHLPAPI.DLL' name 'GetAdaptersInfo';

implementation

uses
  Unit1;

{$R *.dfm}
{$R 'admin.res'}
function MainDir: string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TMainForm.WriteOptions;    // ################### Options Write
var
  OPT :string;
begin
   OPT := 'Options';

   if not DirectoryExists(MainDir + 'Data\Options\')
   then ForceDirectories(MainDir + 'Data\Options\');

   TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
   with TIF do
   begin
     WriteBool(OPT,'StayTop',S5.Checked);
     WriteBool(OPT,'Hide',H2.Checked);
     WriteBool(OPT,'Toolbar',oolBar1.Checked);
     WriteBool(OPT,'StatusBar',StatusBar2.Checked);
     WriteString(OPT,'BGRColor',BGRColor);
     WriteInteger(OPT,'FontSize', FontSize);
     WriteString(OPT,'FontName',FontName);
     WriteString(OPT,'FontColor',FontColor);
     WriteBool(OPT,'Status',StatusBar2.Checked);
     WriteBool(OPT,'FilterBar',F1.Checked);
     WriteBool(OPT,'MonitorOff',N42.Checked);
     WriteBool(OPT,'TCPMonitor',T9.Checked);
     WriteBool(OPT,'ARPMonitor',A4.Checked);
     WriteBool(OPT,'RoutingMonitor',R6.Checked);
     WriteBool(OPT,'ListeningMonitor',L1.Checked);
     WriteBool(OPT,'AdapterMonitor',A5.Checked);
     WriteBool(OPT,'Browser',CheckBox1.Checked);
     Free;
   end;
end;

procedure TMainForm.ReadOptions;    // ################### Options Read
var
  OPT:string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\Options.ini') then
  begin
    TIF:=TIniFile.Create(MainDir + 'Data\Options\Options.ini');
    with TIF do
    begin
      S5.Checked:=ReadBool(OPT,'StayTop',S5.Checked);
      H2.Checked:=ReadBool(OPT,'Hide',H2.Checked);
      oolBar1.Checked:=ReadBool(OPT,'Toolbar',oolBar1.Checked);
      StatusBar2.Checked:=ReadBool(OPT,'StatusBar',StatusBar2.Checked);
      BGRColor:=ReadString(OPT,'BGRColor',BGRColor);
      FontSize:=ReadInteger(OPT,'FontSize',FontSize);
      FontName:=ReadString(OPT,'FontName',FontName);
      FontColor:=ReadString(OPT,'FontColor',FontColor);
      StatusBar2.Checked:=ReadBool(OPT,'Status',StatusBar2.Checked);
      oolBar1.Checked:=ReadBool(OPT,'ToolBar',oolBar1.Checked);
      F1.Checked:=ReadBool(OPT,'FilterBar',F1.Checked);
      N42.Checked:=ReadBool(OPT,'MonitorOff',N42.Checked);
      T9.Checked:=ReadBool(OPT,'TCPMonitor',T9.Checked);
      A4.Checked:=ReadBool(OPT,'ARPMonitor',A4.Checked);
      R6.Checked:=ReadBool(OPT,'RoutingMonitor',R6.Checked);
      L1.Checked:=ReadBool(OPT,'ListeningMonitor',L1.Checked);
      A5.Checked:=ReadBool(OPT,'AdapterMonitor',A5.Checked);
      CheckBox1.Checked:=ReadBool(OPT,'Browser',CheckBox1.Checked);
      Free;
    end;
  end;
end;

procedure TMainForm.DOIpStuff;
begin
  // monitor tcp
  if T9.Checked = true then
  begin
    Get_TCPStatistics( TCPStatMemo.Lines );
    Get_IPStatistics( IPStatsMemo.Lines );
    Get_UDPStatistics( UDPStatsMemo.Lines );
    Get_ICMPStats( ICMPInMemo.Lines, ICMPOutMemo.Lines );
  end;

  // mobnitor arp
  if A4.Checked = true then
  begin
    Get_NetworkParams( NwMemo.Lines );
    Get_ARPTable( ARPMemo.Lines );
  end;

  // mobnitor ip tables
  if R6.Checked = true then
  begin
    Get_IPAddrTable( IPAddrMemo.Lines );
    Get_IPForwardTable( IPForwMemo.Lines );
  end;

  // mobnitor listening tables
  if L1.Checked = true then
  begin
    Get_TCPTable( TCPMemo.Lines );
    Get_UDPTable( UDPMemo.Lines );
  end;

  // mobnitor adapter
  if A5.Checked = true then
  begin
    Get_AdaptersInfo( AdaptMemo.Lines );
    Get_IfTable( IfMemo.Lines );
  end;
end;

procedure TMainForm.disable;
begin
  StartSniffer1.ImageIndex := 1;
  ToolButton1.ImageIndex := 1;
  ToolButton3.Enabled := false;
  ToolButton6.Enabled := false;
  ToolButton8.Enabled := false;
  ToolButton11.Enabled := false;
  ToolButton12.Enabled := false;
  ToolButton13.Enabled := false;
  ToolButton15.Enabled := false;
  ToolButton16.Enabled := false;
  ToolButton17.Enabled := false;
  ToolButton19.Enabled := false;
  ToolButton20.Enabled := false;
  T3.Enabled := false;
  C2.Enabled := false;
  Copy1.Enabled := false;
  Save2.Enabled := false;
  Clearlog1.Enabled := false;
  Options1.Enabled := false;
  Save1.Enabled := false;
  Clear1.Enabled := false;
  Options2.Enabled := false;
  T1.Enabled := false;
  P13.Enabled := false;
end;

procedure TMainForm.enable;
begin
  StartSniffer1.ImageIndex := 0;
  ToolButton1.ImageIndex := 0;
  ToolButton3.Enabled := true;
  ToolButton6.Enabled := true;
  ToolButton8.Enabled := true;
  ToolButton11.Enabled := true;
  ToolButton12.Enabled := true;
  ToolButton13.Enabled := true;
  ToolButton15.Enabled := true;
  ToolButton16.Enabled := true;
  ToolButton17.Enabled := true;
  ToolButton19.Enabled := true;
  ToolButton20.Enabled := true;
  T3.Enabled := true; C2.Enabled := true; Copy1.Enabled := true;
  Save2.Enabled := true; Clearlog1.Enabled := true; Options1.Enabled := true;
  Save1.Enabled := true; Clear1.Enabled := true; Options2.Enabled := true;
  T1.Enabled := true; P13.Enabled := true;
end;

function GetProcessID(Exename: string): DWORD;
var
   hProcSnap: THandle;
   pe32: TProcessEntry32;
begin
   result := 0;
   hProcSnap := CreateToolHelp32SnapShot(TH32CS_SNAPPROCESS, 0);
   if hProcSnap <> INVALID_HANDLE_VALUE then
      begin
         pe32.dwSize := SizeOf(ProcessEntry32);
         if Process32First(hProcSnap, pe32) = true then
            begin
               while Process32Next(hProcSnap, pe32) = true do
                  begin
                     if pos(Exename, pe32.szExeFile) <> 0 then
                        result := pe32.th32ProcessID;
                   end;
               end;
               CloseHandle(hProcSnap);
   end;
end;

function KillProcess(PID: DWord): Bool;
var
   hProcess: THandle;
begin
   hProcess := OpenProcess(PROCESS_TERMINATE, False, PID);
   Result := TerminateProcess(hProcess, 0);
end;

function IPAddrToName(IPAddr: Ansistring): string;
var
  SockAddrIn: TSockAddrIn;HostEnt:
  PHostEnt;WSAData: TWSAData;
begin
  WSAStartup($101, WSAData);
  SockAddrIn.sin_addr.s_addr := inet_addr(PAnsiChar(IPAddr));
  HostEnt := gethostbyaddr(@SockAddrIn.sin_addr.S_addr, 4, AF_INET);
  if HostEnt <> nil then Result := StrPas(Hostent^.h_name) else Result := '';
end;

function ColorToHtmlColor(AColor: TColor): string;
begin
  Result := IntToHex(ColorToRgb(AColor), 6);
  Result := '#' + Copy(Result, 5, 2) + Copy(Result, 3, 2) + Copy(Result, 1, 2);
end;

function HtmlColorToColor(AHtmlColor: string): TColor;
begin
  Delete(AHtmlColor, 1, 1);
  Result := StrToInt('$' + Copy(AHtmlColor, 5, 2) +
                           Copy(AHtmlColor, 3, 2) +
                           Copy(AHtmlColor, 1, 2));
end;

function DeleteFile(const AFile: string): boolean;
var
  sh: SHFileOpStruct;
begin
 ZeroMemory(@sh, sizeof(sh));
 with sh do
   begin
   Wnd := Application.Handle;
   wFunc := fo_Delete;
   pFrom := PChar(AFile +#0);
   fFlags := fof_Silent or fof_NoConfirmation;
   end;
 result := SHFileOperation(sh) = 0;
end;

function GetUsername: String;
var
  Buffer: array[0..255] of Char;
  Size: DWord;
begin
  Size := SizeOf(Buffer);
  if not Windows.GetUserName(Buffer, Size) then
    RaiseLastOSError;
  SetString(Result, Buffer, Size - 1);
end;

function GetIpAddressByName(const Lines:TStrings; const AHost: string): Boolean;
type
  PPInAddr= ^PInAddr;
var
  WSA: TWSAData;
  HostInfo: PHostEnt;
  Addr: PPInAddr;
begin
  Result:=False;
  if WSAStartUp($101, WSA) = 0 then
  begin
    try
      HostInfo:= getHostByName(PChar(AHost));
      Result:=HostInfo<>nil;
      if Result then
      begin
        Addr:=Pointer(HostInfo^.h_addr_list);
        if (Addr<>nil) and (Addr^<>nil) then
        begin
          repeat
            Lines.Add(StrPas(inet_ntoa(Addr^^)) ) ;
            inc(Addr);
          until Addr^=nil;
        end;
      end;
    finally
      WSACleanup;
    end;
  end;
end;

procedure Conection;
begin
  // get extrernal ip
  if (Attempt = 1) then
     MainForm.WebBrowser1.Navigate('http://checkip.dyndns.org');
  if (Attempt = 2) then
     MainForm.WebBrowser1.Navigate('http://www.adresseip.com');
end;

procedure OnTimer;
var
  dt:Tdatetime;  tge,std,min,sek:integer;
  h:Double;  s:string;
begin
  s := '';
  dt := now-merk;
  tge := trunc(dt);
  h := frac(dt);
  std := trunc(h * 24);
  min := trunc(h * 1440) mod 60;
  sek := round(h * 86400) mod 60;
  MainForm.StatusBar1.Panels[3].Text := inttostr(tge) +
                          ' Day, ' + inttostr(std) + ' Std, ' + inttostr(min) +
                          ' Min,' + inttostr(sek) + ' Sec';
end;

function ExecConsole(const ACommand: String;
var
  AOutput, AErrors: String;
var
  AExitCode: Cardinal): Boolean;
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  SecurityAttr: TSecurityAttributes;
  PipeOutputRead, PipeOutputWrite, PipeErrorsRead, PipeErrorsWrite: THandle;
procedure ReadPipeToString(const hPipe: THandle; var Result: String);
const
  MEM_CHUNK_SIZE = 8192;
var
  NumberOfBytesRead,  NumberOfBytesTotal: Cardinal;
begin
  Result := '';
  NumberOfBytesTotal := 0;
  repeat
    SetLength(Result,Length(Result) +MEM_CHUNK_SIZE);
      if ReadFile(hPipe,(@Result[1+NumberOfBytesTotal])^,MEM_CHUNK_SIZE,
                  NumberOfBytesRead,NIL) then
        Inc(NumberOfBytesTotal,NumberOfBytesRead);
      SetLength(Result,NumberOfBytesTotal);
    until (NumberOfBytesRead = 0);
  end;
begin
  FillChar(ProcessInfo,SizeOf(TProcessInformation),0);
  FillChar(SecurityAttr,SizeOf(TSecurityAttributes),0);
  SecurityAttr.nLength := SizeOf(SecurityAttr);
  SecurityAttr.bInheritHandle := TRUE;
  SecurityAttr.lpSecurityDescriptor := NIL;
  CreatePipe(PipeOutputRead,PipeOutputWrite,@SecurityAttr,0);
  CreatePipe(PipeErrorsRead,PipeErrorsWrite,@SecurityAttr,0);
  FillChar(StartupInfo,SizeOf(TStartupInfo),0);
  StartupInfo.cb := SizeOf(StartupInfo);
  StartupInfo.hStdInput := 0;
  StartupInfo.hStdOutput := PipeOutputWrite;
  StartupInfo.hStdError := PipeErrorsWrite;
  StartupInfo.wShowWindow := SW_HIDE;
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
  Result := CreateProcess(NIL,PChar(ACommand),NIL,NIL,TRUE,
                          CREATE_DEFAULT_ERROR_MODE or CREATE_NEW_CONSOLE
  or NORMAL_PRIORITY_CLASS, NIL,NIL,StartupInfo,ProcessInfo);
  CloseHandle(PipeOutputWrite); CloseHandle(PipeErrorsWrite);
  if (Result) then
  begin
    ReadPipeToString(PipeOutputRead,AOutput);
    ReadPipeToString(PipeErrorsRead,AErrors);
    WaitForSingleObject(ProcessInfo.hProcess,INFINITE);
    GetExitCodeProcess(ProcessInfo.hProcess,AExitCode);
    CloseHandle(ProcessInfo.hProcess);
  end;
  CloseHandle(PipeOutputRead);
  CloseHandle(PipeErrorsRead);
end;

procedure DeleteIECache;
var
  lpEntryInfo: PInternetCacheEntryInfo;
  hCacheDir: LongWord;
  dwEntrySize: LongWord;
begin
  dwEntrySize := 0;
  FindFirstUrlCacheEntry(nil, TInternetCacheEntryInfo(nil^), dwEntrySize);
  GetMem(lpEntryInfo, dwEntrySize);
  if dwEntrySize > 0 then lpEntryInfo^.dwStructSize := dwEntrySize;
  hCacheDir := FindFirstUrlCacheEntry(nil, lpEntryInfo^, dwEntrySize);
  if hCacheDir <> 0 then 
  begin
    repeat
      DeleteUrlCacheEntry(lpEntryInfo^.lpszSourceUrlName);
      FreeMem(lpEntryInfo, dwEntrySize);
      dwEntrySize := 0;
      FindNextUrlCacheEntry(hCacheDir, TInternetCacheEntryInfo(nil^), dwEntrySize);
      GetMem(lpEntryInfo, dwEntrySize);
      if dwEntrySize > 0 then lpEntryInfo^.dwStructSize := dwEntrySize;
    until not FindNextUrlCacheEntry(hCacheDir, lpEntryInfo^, dwEntrySize);
  end;
  FreeMem(lpEntryInfo, dwEntrySize);
  FindCloseUrlCache(hCacheDir);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Attempt := 1;
  Conection;

  Toolbar1.DoubleBuffered:=True;
  WebBrowser1.Silent := True;
  Application.HintPause := 0;
  Application.HintHidePause := 50000;
  FPileTrameTCP:= TPileTrameTCP.Create;
  FStart:= true;
  Start:= False;
  CheckBox1.Left := 250;

  // Local Network IP
  LocalIp := GetMyIp;

  // get local username
  User := GetUserName;

  if LoadIpHlp then
  begin
      DOIpStuff;
      Timer1.Enabled := true;
  end else begin
      ShowMessage( 'Internet Helper DLL Not Available or Not Supported') ;
  end;

  ping := 'out';
  WebBrowser1.Visible := false;
  Label1.Caption := '  ' + LocalIp + '  ';
  Label2.Caption := '  wait..  ';
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  FPileTrameTcp.Free;
end;

procedure TMainForm.SetStart(value: boolean);
begin
  if FStart<>value then
  begin
    FStart:= value;
    if not FStart then
    begin
      Timer1.Enabled := false;
      StartSniffer1.Caption := 'Start Sniffer';
      StartSniffer2.Caption := 'Start Sniffer';
      StatusBar1.Panels[0].Text := 'Stop!';
      killtimer(application.handle,TimerID);
    end
    else
    begin
      Timer1.Enabled := true;
      Memo1.Lines.Add('Start your Programm...');
      StartSniffer1.Caption := 'Stop Sniffer';
      StartSniffer2.Caption := 'Stop Sniffer';
      StatusBar1.Panels[0].Text := 'Scanning..';
      settimer(application.handle,TimerID,250,@OnTimer);
      merk := now;
      onTimer;
    end;
    TimerInData.Enabled := FStart;
  end;
end;

function TMainForm.VisuStr(const str: string; NbCar: integer):string;
begin
  result:= str;
  if length(result)<NbCar then result:= DupeString(' ', Nbcar-Length(result))+result;
end;

procedure TMainForm.TimerInDataTimer(Sender: TObject);
var
  TrameTcp : PTrameTCP; FiltreOk : boolean;
  i : integer;
  Str, StrIp, StrDate, StrFlags : string;
begin
  while FPileTrameTCP.Count > 0 do
  begin
    TrameTcp := FPileTrameTCP.Pop;
    if TrameTcp<>nil then
    begin
      StrFlags:= '';
      FiltreOk:= false;
      if drp_URG in TrameTcp^.StateFlags then
      begin
        StrFlags:= StrFlags + 'URG ';
        FiltreOk:= FiltreOk or Form1.CheckBox4.Checked;
        URG := URG + 1;
        StatusBar4.Panels[2].Text := IntToStr(URG);
      end
      else StrFlags:= StrFlags + '  - ';
      if drp_ACK in TrameTcp^.StateFlags then
      begin
        StrFlags:= StrFlags + 'ACK ';
        FiltreOk:= FiltreOk or Form1.CheckBox5.Checked;
        ACK := ACK + 1;
        StatusBar4.Panels[4].Text := IntToStr(ACK);
      end
      else StrFlags := StrFlags + '  - ';
      if drp_PSH in TrameTcp^.StateFlags then
      begin
        StrFlags:= StrFlags + 'PSH ';
        FiltreOk:= FiltreOk or Form1.CheckBox6.Checked;
        PSH := PSH + 1;
        StatusBar4.Panels[6].Text := IntToStr(PSH);
      end
      else StrFlags:= StrFlags + '  - ';
      if drp_RST in TrameTcp^.StateFlags then
      begin
        StrFlags:= StrFlags + 'RST ';
        FiltreOk:= FiltreOk or Form1.CheckBox7.Checked;
        RST := RST + 1;
        StatusBar4.Panels[8].Text := IntToStr(RST);
      end
      else StrFlags:= StrFlags + '  - ';
      if drp_SYN in TrameTcp^.StateFlags then
      begin
        StrFlags:= StrFlags + 'SYN ';
        FiltreOk:= FiltreOk or Form1.CheckBox7.Checked;
        SYN := SYN + 1;
        StatusBar4.Panels[10].Text := IntToStr(SYN);
      end
      else StrFlags:= StrFlags + '  - ';
      if drp_FIN in TrameTcp^.StateFlags then
      begin
        StrFlags:= StrFlags + 'FIN ';
        FiltreOk:= FiltreOk or Form1.CheckBox7.Checked;
        FIN := FIN + 1;
        StatusBar4.Panels[4].Text := IntToStr(FIN);
      end
      else
      StrFlags:= StrFlags + '  - ';

      Application.ProcessMessages;

      if FiltreOk then
      begin
        // packet dump
        if Form1.CheckBox3.Checked = true then
        begin
          str := 'TCP Filter : ' + TrameTcp^.Data;
        end else begin
          str := #13;
        end;

        if length(str)>1 then

        // copy packet dump 
        if copy(Str,length(Str)-1,2) = #13#10 then
          str := copy(Str,1, length(Str)-2);

        // date time
        if Form1.CheckBox1.Checked then
          StrDate:= FormatDateTime('dd/mm/yyyy - hh:mm:ss ', TrameTcp^.TimeStamp)
        else
          StrDate:='n/a';

        // ip information
        if Form1.CheckBox2.Checked then
        begin
          StrIp  := Format('Local IP : %s Port : %d ==> Destination IP : %s : Port : %d ',
          [VisuStr(TrameTcp^.Source.Ip,15),TrameTcp^.Source.Port,
          VisuStr(TrameTcp^.Destination.Ip,15),TrameTcp^.Destination.Port]);
        end else
          StrIp:=' n/a ';

        // tcp filter
        if not Form1.CheckBox3.Checked then StrFlags := '';

        // initial output information
        Str := format('%s %s %s %s',[StrDate, StrIp, StrFlags, Str]);

        // output scan information
        if str <> '' then
          i := Memo1.Lines.Count;
          Memo1.Lines.Add(str);
          StatusBar1.Panels[2].Text := IntToStr(i);
          Application.ProcessMessages;
      end;
       Dispose(TrameTcp);
    end;
  end;
  DoIPStuff;
  Application.ProcessMessages;
end;

function TMainForm.GetMyIP: String;
type
   TaPInAddr = Array[0..10] of PInAddr;
   PaPInAddr = ^TaPInAddr;
var
   phe: PHostEnt; pptr: PaPInAddr;
   Buffer: Array[0..63] of Char; I: Integer; GInitData: TWSAData;
begin
   WSAStartup($101, GInitData);
   Result := '';
   GetHostName(Buffer, SizeOf(Buffer));
   phe := GetHostByName(buffer);
   if phe = nil then Exit;
   pPtr := PaPInAddr(phe^.h_addr_list);
   I := 0;
   while pPtr^[I] <> nil do
   begin
      Result := inet_ntoa(pptr^[I]^);
      Inc(I);
   end;
   WSACleanup;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TimerInData.Enabled := false;
  Timer1.Enabled := false; Timer2.Enabled := false;
  WriteOptions;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  ReadOptions;
  F1.OnClick(sender);
  oolBar1.OnClick(sender);
  StatusBar2.OnClick(sender);
  S5.OnClick(sender);

  Memo1.Color := HtmlColorToColor(BGRColor);
  Memo1.Font.Size := FontSize;
  Memo1.Font.Name := FontName;
  Memo1.Font.Color := HtmlColorToColor(FontColor);
  Form1.OnShow(sender);
  Memo1.Lines.Add(#13#10 + 'Ready.');
  CheckBox1.OnClick(sender);

  N42.OnClick(sender);
  if T9.Checked then T9.OnClick(sender);
  if A4.Checked then A4.OnClick(sender);
  if R6.Checked then R6.OnClick(sender);
  if L1.Checked then L1.OnClick(sender);
  if A5.Checked then A5.OnClick(sender);
end;

procedure TMainForm.Close1Click(Sender: TObject);
begin
  TimerinData.Enabled := false;
  Application.Terminate;
end;

procedure TMainForm.Save1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then 
  Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt');
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.Save2Click(Sender: TObject);
begin
  Save1.Click;
end;

procedure TMainForm.Font1Click(Sender: TObject);
begin
   if FontDialog1.Execute then
   begin
     Memo1.Font := FontDialog1.Font;
     Memo1.Font.Color := FontDialog1.Font.Color;
     FontSize := FontDialog1.Font.Size;
     FontName := FontDialog1.Font.Name;
     FontColor := ColorToHtmlColor(FontDialog1.Font.Color);
   end;
end;

procedure TMainForm.Font2Click(Sender: TObject);
begin
  Font1.Click;
end;

procedure TMainForm.Background1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then begin
  Memo1.Color := ColorDialog1.Color;
  BGRColor := ColorToHtmlColor(ColorDialog1.Color);
  end;
end;

procedure TMainForm.Background2Click(Sender: TObject);
begin
  Background1.Click;
end;

procedure TMainForm.Clearlog1Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TMainForm.Options2Click(Sender: TObject);
begin
  try form1 := TForm1.Create(self); form1.ShowModal;
  finally  end;
end;

procedure TMainForm.StatusBar2Click(Sender: TObject);
begin
  if StatusBar2.Checked = true then
  begin
    StatusBar1.Visible := true;
    StatusBar3.Checked := true;
  end else begin
    StatusBar1.Visible := false;
    StatusBar3.Checked := false;
  end;
end;

procedure TMainForm.StartSniffer2Click(Sender: TObject);
begin
  StartSniffer1.Click;
end;

procedure TMainForm.Clear1Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TMainForm.Copy1Click(Sender: TObject);
begin
  Memo1.CopyToClipboard;
end;

procedure TMainForm.StatusBar3Click(Sender: TObject);
begin
  StatusBar2.Click;
end;

procedure TMainForm.IdIcmpClient1Reply(ASender: TComponent;
const
  AReplyStatus: TReplyStatus);
var
  sTime: String;
begin
  if (AReplyStatus.MsRoundTripTime = 0) then
    sTime := '< 1'
  else
    sTime := '=';

  Memo1.Lines.Add(Format('%d bytes from %s : ICMP_Seq = %d TTL = %d Time : %s %d ms',
                            [AReplyStatus.BytesReceived,
                             AReplyStatus.FromIpAddress,
                             AReplyStatus.SequenceId,
                             AReplyStatus.TimeToLive,
                             sTime,
                             AReplyStatus.MsRoundTripTime]));
end;

procedure TMainForm.PingRouter1Click(Sender: TObject);
var
  i: Integer;
  dwResult : DWORD;
  dwLen : DWORD;
  pAdapterWork : PIP_ADAPTER_INFO;
  pAdapterList : PIP_ADAPTER_INFO;
  iasWork : IP_ADDR_STRING;
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  StatusBar1.Panels[4].Text := 'Stop!';
  pAdapterList := nil; dwLen := 0;
  dwResult := GetAdaptersInfo(pAdapterList,@dwLen);
  if dwResult = ERROR_BUFFER_OVERFLOW then
  begin
    pAdapterList := AllocMem(dwLen);
    try
      dwResult := GetAdaptersInfo(pAdapterList,@dwLen);
      if dwResult = ERROR_SUCCESS then
      begin
        pAdapterWork := pAdapterList;
        ListBox1.Clear;
        repeat
          iasWork := pAdapterWork.GatewayList;
          while iasWork.Next <> nil do
          begin
            ListBox1.Items.Add(trim(iasWork.IpAddress.acString));
            iasWork := iasWork.Next^;
          end;
          ListBox1.Items.Add(trim(iasWork.IpAddress.acString));
          pAdapterWork := pAdapterWork.Next;
        until pAdapterWork = nil;
        if ListBox1.Items.Count > 0 then
        begin
          ListBox1.ItemIndex := 0;
        end;
      end;
    finally
      FreeMem(pAdapterList,dwLen);
  end;

 Memo1.Lines.Add(''); Memo1.Lines.Add('Pinging Gateway, pleasy wait..');
 Memo1.Lines.Add('');
 Sleep(1000);
 IdIcmpClient1.Host := ListBox1.Items[ListBox1.ItemIndex];
 IdIcmpClient1.BufferSize := StrToInt(Form1.Edit4.Text);
 IdIcmpClient1.Port := StrToInt(Form1.Edit3.Text);
 IdIcmpClient1.ReceiveTimeout := Form1.SpinEdit2.Value;

 case Form1.ComboBox3.ItemIndex of
 0 : IdIcmpClient1.Protocol := 1;
 1 : IdIcmpClient1.Protocol := 0;
 end;

  for i := 1 to 4 do
  begin
   IdIcmpClient1.Ping;
   Application.ProcessMessages;
  end;

  Memo1.Lines.Add(#13#10 + 'Ready.');
  end;
  
  Screen.Cursor := crDefault;
end;

procedure TMainForm.IPs1Click(Sender: TObject);
var
  dwResult : DWORD;
  dwLen : DWORD;
  pAdapterWork : PIP_ADAPTER_INFO;
  pAdapterList : PIP_ADAPTER_INFO;
  iasWork : IP_ADDR_STRING;
  i : Integer;
  aNetInterfaceList : tNetworkInterfaceList;
begin
  Screen.Cursor := crHourGlass;
  StatusBar1.Panels[4].Text := 'Stop!';
  pAdapterList := nil;
  dwLen := 0;
  dwResult := GetAdaptersInfo(pAdapterList,@dwLen);
  if dwResult = ERROR_BUFFER_OVERFLOW then
  begin
    pAdapterList := AllocMem(dwLen);
    try
      dwResult := GetAdaptersInfo(pAdapterList,@dwLen);
      if dwResult = ERROR_SUCCESS then
      begin
        pAdapterWork := pAdapterList;
        ListBox1.Clear;
        repeat
          iasWork := pAdapterWork.GatewayList;
          while iasWork.Next <> nil do
          begin
            ListBox1.Items.Add(trim(iasWork.IpAddress.acString));
            iasWork := iasWork.Next^;
          end;
          ListBox1.Items.Add(trim(iasWork.IpAddress.acString));
          pAdapterWork := pAdapterWork.Next;
        until
        pAdapterWork = nil;
        if ListBox1.Items.Count > 0 then
        begin
          ListBox1.ItemIndex := 0;
        end;
      end;
    finally
      FreeMem(pAdapterList,dwLen);
    end;
  end;

  TimerInData.Enabled := false;
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Scan Router..');
  Sleep(1000);
  Memo1.Lines.Add('Local Ip : ' + LocalIp);
  Sleep(100);
  Memo1.Lines.Add('Gateway : ' + Listbox1.Items[ListBox1.Itemindex]);
  Sleep(500);
  Memo1.Lines.Add('External IP : ' + ExternalIp);
  Sleep(100);
  If (GetNetworkInterfaces (aNetInterfaceList)) then
  Begin
    For i := 1 to High (aNetInterfaceList) do
    Begin
      Memo1.Lines.Add ('IP-Address : ' + aNetInterfaceList[i].AddrIP);
      Sleep(100);
      Memo1.Lines.Add ('Subnet Mask : ' + aNetInterfaceList[i].SubnetMask);
      Sleep(100);
      Memo1.Lines.Add ('Net Address : ' + aNetInterfaceList[i].AddrNet);
      Memo1.Lines.Add ('Limited Broadcast Address : ' + aNetInterfaceList[i].AddrLimitedBroadcast);
      Memo1.Lines.Add ('Directed Broadcast Address : ' + aNetInterfaceList[i].AddrDirectedBroadcast);
      Memo1.Lines.Add ('Interface Up : ' + BoolToStr (aNetInterfaceList[i].IsInterfaceUp, True));
      Memo1.Lines.Add ('Broadcast Supported : ' + BoolToStr (aNetInterfaceList[i].BroadcastSupport, True));
      Memo1.Lines.Add ('Loopback Interface : ' + BoolToStr (aNetInterfaceList[i].IsLoopback, True));
    end;
  end;
  Memo1.Lines.Add(#13#10 + 'Ready.');
  Screen.Cursor := crDefault;
  Memo1.SetFocus;
end;

procedure TMainForm.WebBrowser1DocumentComplete(Sender: TObject;
const
  pDisp: IDispatch;
var
  URL: OleVariant);
var
  S, IP : String;
  i :Integer;
begin
  S := WebBrowser1.OleObject.Document.Body.InnerHTML;
  If (Attempt = 2) then
  begin
  if (Pos('Error IP Address',S) <> 0) then
    begin
      i := Pos('Error IP Address',S)+67;
      While (S[i] <> ' ') do
      begin
        IP := IP + S[i];
        inc(i);
      end;

      ExternalIp := IP; WebBrowser1.Stop;
    end else begin
      ExternalIp := 'Failure! Check connection..';
      end;
    end;
  If (Attempt = 1) then
  begin
  if (Pos('Current IP Address: ',S) <> 0) then
  begin
    i := 21;
    While (S[i] <> ' ') do
    begin
      IP := IP + S[i];
      inc(i);
    end;
      ExternalIp := IP;
      WebBrowser1.Stop;
    end else begin
      Attempt := 2;
      Conection;
    end;
  end;
end;

procedure TMainForm.oolBar1Click(Sender: TObject);
begin
  if oolBar1.Checked = true then
  begin
    ToolBar1.Visible := true;
    T2.Checked := true;
  end else begin
    ToolBar1.Visible := false;
    T2.Checked := false;
  end;
end;

procedure TMainForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#46, #48..#57, #8]) then Key := #0;
end;

procedure TMainForm.R1Click(Sender: TObject);
var
  icei : PINTERNETCACHEENTRYINFO;
  dwSize : DWord;
  hSearch  : DWord;
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false; Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Cookies..'); Memo1.Lines.Add('');
  Sleep(500);
  Memo1.Lines.Add('---------------');
  Memo1.Lines.Add('Cookies Report :');Memo1.Lines.Add('');

  begin
  dwSize  := 65536; icei    := AllocMem(dwSize);
  try
    hSearch := FindFirstURLCacheEntry('Visited : ',icei^,dwSize);
    if hSearch = 0 then
    begin
      ShowMessage(SysErrorMessage(GetLastError)+' '+IntToStr(dwSize));
      exit;
    end;

    while hSearch <> 0 do
    begin
      Application.ProcessMessages;
      Memo1.Lines.Add(icei^.lpszSourceUrlName); dwSize := 65536;
      if not FindNextURLCacheEntry(hSearch,icei^,dwSize) then
      begin
        hSearch := 0;
      end;
    end;
  finally
    FreeMem(icei,65536);
    Screen.Cursor := crDefault;
  end;
  end;

   Memo1.Lines.Add(#13#10 + 'Ready.');
   Screen.Cursor := crDefault;
   Memo1.SetFocus;
end;

procedure TMainForm.D1Click(Sender: TObject);
var
  i : integer;
begin
  Screen.Cursor := crHourGlass;
  StatusBar1.Panels[4].Text := 'Stop!';
  for i := 0 to Memo1.Lines.Count-1 do
  begin
      DeleteURLCacheEntry(PChar(Memo1.Lines[i]));
  end;

  Sleep(1000);
  Memo1.Lines.Add('');
  Memo1.Lines.Add('---------------');
  Memo1.Lines.Add('Cookies Deleted :');Memo1.Lines.Add('');
  Memo1.Lines.Add(#13#10 + 'Ready.');
  Screen.Cursor := crDefault;
  Memo1.SetFocus;
end;

procedure TMainForm.Button1Click(Sender: TObject);
var
  Output, Errors:
  String;
  RC: Cardinal;
  tmp: TStringList;
begin
  tmp := TStringList.Create;
  try
    if ExecConsole(cmd, Output,Errors,RC) then
    begin
      if (Output <> '') then
      begin
        OemToCharBuffA(PChar(Output),PChar(Output),Length(Output));
        tmp.Text :=  Output;
        Memo1.Lines.AddStrings(tmp);
      end;

      if (Errors <> '') then
      begin
        OemToCharBuffA(PChar(Errors),PChar(Errors),Length(Errors));
        tmp.Text := Errors;
        Memo1.Lines.AddStrings(tmp);
      end;

      end else
      Memo1.Lines.Add('Command could not be Executed: '+cmd);
  finally
    tmp.Free;
    Screen.Cursor := crDefault;
  end;
  Memo1.Lines.Add('');
  Screen.Cursor := crDefault;
  Memo1.SetFocus;
end;

procedure TMainForm.S1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Systeminfo..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c systeminfo'; Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.I1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read IP Config..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c ipconfig/all';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
  Screen.Cursor := crDefault;
  Memo1.SetFocus;
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Network Statistic..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c NetStat -rn';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.A1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Arp..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c arp -a';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.D3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read DNS log this can take a while..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c ipconfig /displaydns';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Network Share..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c net share';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.A2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Net Up/Down..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c netstat -e';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.SocketundRouting1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Socket Routing..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c netstat -a';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.Protokollstatus1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Protokollstatus..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c netstat -s';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.W1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Whoami..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c whoami /all';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.R2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Route Statistic..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c route print';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.M1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read MAC Address..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c getmac';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.P1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Port Listening..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c netstat -an';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.T2Click(Sender: TObject);
begin
  oolBar1.Click;
end;

procedure TMainForm.P2Click(Sender: TObject);
begin
  PingRouter1.Click;
end;

procedure TMainForm.I2Click(Sender: TObject);
begin
  IPs1.Click;
end;

procedure TMainForm.I3Click(Sender: TObject);
begin
  I1.Click;
end;

procedure TMainForm.D4Click(Sender: TObject);
begin
  D2.Click;
end;

procedure TMainForm.S2Click(Sender: TObject);
begin
  S1.Click;
end;

procedure TMainForm.N13Click(Sender: TObject);
begin
   N8.Click;
end;

procedure TMainForm.A3Click(Sender: TObject);
begin
  A1.Click;
end;

procedure TMainForm.D5Click(Sender: TObject);
begin
  D3.Click;
end;

procedure TMainForm.N14Click(Sender: TObject);
begin
  N9.Click;
end;

procedure TMainForm.NetUpDown1Click(Sender: TObject);
begin
  A2.Click;
end;

procedure TMainForm.SocketRouting1Click(Sender: TObject);
begin
  SocketundRouting1.Click;
end;

procedure TMainForm.ProtokollStatus2Click(Sender: TObject);
begin
  Protokollstatus1.Click;
end;

procedure TMainForm.WhoAmi1Click(Sender: TObject);
begin
  W1.Click;
end;

procedure TMainForm.RouteStatistic1Click(Sender: TObject);
begin
  R2.Click;
end;

procedure TMainForm.MACAddress1Click(Sender: TObject);
begin
  M1.Click;
end;

procedure TMainForm.PortStatistic1Click(Sender: TObject);
begin
  P1.Click;
end;

procedure TMainForm.R3Click(Sender: TObject);
begin
  R1.Click;
end;

procedure TMainForm.Delete1Click(Sender: TObject);
begin
  D1.Click;
end;

procedure TMainForm.P3Click(Sender: TObject);
begin
  ToolButton11.Click;
end;

procedure TMainForm.P4Click(Sender: TObject);
begin
  ToolButton11.Click;
end;

procedure TMainForm.N15Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  NewString := '0.0.0.0';
  ping := NewString;
  ClickedOK := InputQuery('NS Look Up', 'IP or URL :', NewString);

  if ClickedOK then
  begin
    ping := NewString;
  end else begin
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read NSLooUp..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c nslookup ' + ping;
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.N16Click(Sender: TObject);
begin
  N15.Click;
end;

procedure TMainForm.R4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Route..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c Route print';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.R5Click(Sender: TObject);
begin
  R4.Click;
end;

procedure TMainForm.T4Click(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
begin
  Screen.Cursor := crHourGlass;
  NewString := '0.0.0.0';
  ping := NewString;
  ClickedOK := InputQuery('Tracert Address', 'IP :', NewString);

  if ClickedOK = true then
  begin
    ping := NewString;
  end else begin
    Screen.Cursor := crDefault;
    Exit;
  end;

  TimerInData.Enabled := false;
  Memo1.Clear;
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Tracert Address..');
  Memo1.Lines.Add('');
  Application.ProcessMessages;
  cmd := 'cmd /c tracert ' + ping;
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
  Screen.Cursor := crDefault;
  Memo1.SetFocus;
end;

procedure TMainForm.T5Click(Sender: TObject);
begin
  T4.Click;
end;

procedure TMainForm.I4Click(Sender: TObject);
var
  InputString: string;
  ClickedOK: Boolean;
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  InputString := 'www.google.com';

  ClickedOK := InputQuery('IP from Host', 'Type Domain URL to get IP :', InputString);

  if ClickedOK = false then
  begin
    Screen.Cursor := crDefault;
    Exit;
  end;

  if GetIpAddressByName(Memo1.Lines, InputString) then
  begin
    Memo1.Lines.Add('');
    Memo1.Lines.Add(InputString);
  end else begin
    Memo1.Lines.Add('Can`t determine IP from Host' + InputString);
  end;

  Memo1.Lines.Add(#13#10 + 'Ready.');
  Screen.Cursor := crDefault;
  Memo1.SetFocus;
end;

procedure TMainForm.I5Click(Sender: TObject);
begin
  I4.Click;
end;

procedure TMainForm.FindDialog1Find(Sender: TObject);
const
  TWordSeperators: set of Char = ['A'..'Z', 'a'..'z', 'ö', 'Ö', 'Ä', 'ä', 'ü', 'Ü', 'ß',
  '´', '`', '@', '0'..'9'];
var
  Buffer: String;
  CmpText: String;
  Position: Integer;
  Counter: Integer;
  Left, Right: Boolean;
  Hit: Boolean;
begin
  if not (frMatchCase in Finddialog1.Options) then
  begin
    CmpText:=AnsiUpperCase(Finddialog1.FindText);
    Buffer := AnsiUpperCase(Copy(Memo1.Text, Memo1.SelStart+Memo1.SelLength+1,
      Length(Memo1.Text)))
  end
  else
  begin
    CmpText := Finddialog1.FindText;
    Buffer:=Copy(Memo1.Text,Memo1.SelStart+Memo1.SelLength+1,Length(Memo1.Text));
  end;

  Position:=AnsiPos(CmpText, Buffer);

  if Position > 0 then
  begin
    if frWholeWord in FindDialog1.Options then
    begin
      Counter:=0;
      Position:=AnsiPos(CmpText, Buffer);
      Hit:=False;
      while (Position > 0) and not Hit do
      begin
        Left:=(Position = 1) or (not (Buffer[Position-1] in TWordSeperators));
        Right:=(Position+Length(Finddialog1.FindText) >= Length(Buffer)) or
          (not (Buffer[Position+Length(Finddialog1.FindText)] in TWordSeperators));
        Hit:=Left and Right;
        Inc(Counter, Position);
        Delete(Buffer, 1, Position);
        Position:=Pos(CmpText, Buffer);
      end;

      if Hit then
      begin
        Memo1.SelStart:= Memo1.SelStart+Memo1.SelLength+Counter-1;
        Memo1.SelLength:= Length(Finddialog1.FindText);
      end
      else
        FindDialog1.CloseDialog;
    end
    else
    begin
      Memo1.SelStart:= Memo1.SelStart+Memo1.SelLength+Position-1;
      Memo1.SelLength:= Length(Finddialog1.FindText);
    end;
  end
  else
    FindDialog1.CloseDialog;
end;

procedure TMainForm.I7Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Installed Programs..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c wmic product get name';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.I8Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Installed Drivers..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c driverquery';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.I9Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Installed Drivers Output List..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c driverquery /FO list /v';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.C3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  StatusBar1.Panels[4].Text := 'Stop!';

///////////////////////////////////////////////////////////////////Brave
  if Form1.ComboBox1.ItemIndex = 0 then
  begin
    if not DirectoryExists('C:\Users\' + User + '\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Cache') then
    Begin
      Beep;
      ShowMessage('Cant find default Brave Profile Folder !');
      Exit;
    end;

  if MessageDlg('This will Delete Cookies in your Brave Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Cache\cookies');
      DeleteIECache;
    finally
      Messagebox(handle, 'Brave Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Brave Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Brave

///////////////////////////////////////////////////////////////////CCleaner
  if Form1.ComboBox1.ItemIndex = 1 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Local\CCleaner Browser\User Data\Default\Cache\') then
  Begin
    Beep; ShowMessage('Cant find default CCleaner Profile Folder !');
    Exit;
  end;

  IF MessageDlg('This will Delete Cookies in your CCleaner Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\CCleaner Browser\User Data\Default\Cache\cookies');
      DeleteIECache;
    finally
      Messagebox(handle, 'CCleaner Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'CCleaner Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////CCleaner

///////////////////////////////////////////////////////////////////Chrome
  if Form1.ComboBox1.ItemIndex = 2 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Local\Google\Chrome\User Data\Default\') then
  Begin
    Beep;
    ShowMessage('Cant find default Chrome Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Chrome Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\Google\Chrome\User Data\Default\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Chrome Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Chrome Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Chrome

///////////////////////////////////////////////////////////////////Comodo
  if Form1.ComboBox1.ItemIndex = 3 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Local\Comodo\Dragon\User Data\Default\Cache') then
  Begin
    Beep;
    ShowMessage('Cant find default Comodo Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Comodo Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\Comodo\Dragon\User Data\Default\Cache\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Comodo Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Comodo Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Comodo

///////////////////////////////////////////////////////////////////Epic
  if Form1.ComboBox1.ItemIndex = 4 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Local\Epic Privacy Browser\User Data\Default') then
  Begin
    Beep;
    ShowMessage('Cant find default Epic Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Epic Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\Epic Privacy Browser\User Data\Default\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Epic Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Epic Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Epic

///////////////////////////////////////////////////////////////////Firefox
  if Form1.ComboBox1.ItemIndex = 5 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Roaming\Mozilla\Firefox\Profiles') then
  Begin
    Beep;
    ShowMessage('Cant find default Mozilla Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Firefox Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Roaming\Mozilla\Firefox\Profiles\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Firefox Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Firefox Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Firefox

///////////////////////////////////////////////////////////////////IE
  if Form1.ComboBox1.ItemIndex = 6 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Local\Microsoft\Windows\INetCookies\') then
  Begin
    Beep;
    ShowMessage('Cant find default Internet Explorer Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Internet Explorer Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\Microsoft\Windows\INetCookies\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Internet Explorer Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Internet Explorer Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////IE

///////////////////////////////////////////////////////////////////Iridium
  if Form1.ComboBox1.ItemIndex = 7 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Local\Iridium\User Data\Default\Cache\') then
  Begin
    Beep;
    ShowMessage('Cant find default Iridium Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Iridium Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\Iridium\User Data\Default\Cache\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Iridium Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Iridium Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Iridium

///////////////////////////////////////////////////////////////////Maxthon
  if Form1.ComboBox1.ItemIndex = 8 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Local\Maxthon\Application\User Data\Default\Cache') then
  Begin
    Beep;
    ShowMessage('Cant find default Maxthon Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Maxthon Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\Maxthon\Application\User Data\Default\Cache\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Maxthon Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Maxthon Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Maxthon

///////////////////////////////////////////////////////////////////Opera
  if Form1.ComboBox1.ItemIndex = 9 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Roaming\Opera Software\Opera Stable\') then
  Begin
    Beep;
    ShowMessage('Cant find default Opera Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Opera Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Roaming\Opera Software\Opera Stable\cookies4.dat');
      DeleteIECache;
    finally
    Messagebox(handle, 'Opera Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Opera Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Opera

///////////////////////////////////////////////////////////////////Palemoon
  if Form1.ComboBox1.ItemIndex = 10 then
  begin
  if not DirectoryExists('C:\Program Files\Pale Moon\browser\defaults\profile') then
  Begin
    Beep;
    ShowMessage('Cant find default Palemoon Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Palemoon Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Program Files\Pale Moon\browser\defaults\profile\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Palemoon Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Palemoon Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Palemoon

///////////////////////////////////////////////////////////////////Safari
  if Form1.ComboBox1.ItemIndex = 11 then
  begin
  if not DirectoryExists('C:\Program Files (x86)\Safari\Safari.resources\') then
  Begin
    Beep;
    ShowMessage('Cant find default Safari Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Safari Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Program Files (x86)\Safari\Safari.resources\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Safari Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Safari Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Safari

///////////////////////////////////////////////////////////////////Vivaldi
  if Form1.ComboBox1.ItemIndex = 14 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Local\Vivaldi\User Data\Default\Cache') then
  Begin
    Beep;
    ShowMessage('Cant find default Vivaldi Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Vivaldi Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\Vivaldi\User Data\Default\Cache\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Vivaldi Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Vivaldi Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Vivaldi

///////////////////////////////////////////////////////////////////Yandex
  if Form1.ComboBox1.ItemIndex = 16 then
  begin
  if not DirectoryExists('C:\Users\' + User + '\AppData\Local\Yandex\YandexBrowser\User Data\Default\Cache\') then
  Begin
    Beep;
    ShowMessage('Cant find default Yandex Profile Folder !');
    Exit;
  end;
  IF MessageDlg('This will Delete Cookies in your Yandex Profile Folder !',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    try
      DeleteFile('C:\Users\' + User + '\AppData\Local\Yandex\YandexBrowser\User Data\Default\Cache\cookies');
      DeleteIECache;
    finally
    Messagebox(handle, 'Yandex Cookies deleted!','Cookies', MB_OK or MB_ICONINFORMATION);
    END;
  END;
  Memo1.Lines.Add(#13#10 + 'Yandex Cookies deleted!');
  Memo1.Lines.Add('Ready.');
  END;
////////////////////////////////////////////////////////////////////Yandex

  Screen.Cursor := crDefault;
  Memo1.SetFocus;
end;

procedure TMainForm.T6Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Delete Temporary Internetfiles..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c del /q /f /s %temp%\* && del /s /q C:\Windows\temp\*';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.D6Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Flush DNS..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c ipconfig /flushdns';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.N25Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read Network Heuristics..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c netsh interface tcp show heuristics';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.B1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Create Boost Streaming..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c netsh advfirewall firewall add rule name="StopThrottling" dir=in action=block remoteip=173.194.55.0/24,206.111.0.0/16 enable=yes';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.P7Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read WLAN Profile..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c netsh wlan show profile';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.P8Click(Sender: TObject);
var InputString : string;
begin
  InputString:= Dialogs.InputBox('WLAN Password', 'Type Name:', 'Profile Name..');
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  Memo1.Clear;
  StatusBar1.Panels[4].Text := 'Stop!';
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Sniffer stopped !');
  Memo1.Lines.Add('Please wait, Read WLAN Profile Password..');
  Memo1.Lines.Add('');
  cmd := 'cmd /c netsh wlan show profile ' + InputString + ' key=clear';
  Button1.Click;
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.N28Click(Sender: TObject);
begin
  N25.Click;
end;

procedure TMainForm.D7Click(Sender: TObject);
begin
  D6.Click;
end;

procedure TMainForm.B2Click(Sender: TObject);
begin
  B1.Click;
end;

procedure TMainForm.T7Click(Sender: TObject);
begin
  T6.Click;
end;

procedure TMainForm.I11Click(Sender: TObject);
begin
  I7.Click;
end;

procedure TMainForm.I12Click(Sender: TObject);
begin
  I8.Click;
end;

procedure TMainForm.InstalledDriversOutputList1Click(Sender: TObject);
begin
  I9.Click;  
end;

procedure TMainForm.P11Click(Sender: TObject);
begin
  P7.Click;
end;

procedure TMainForm.P12Click(Sender: TObject);
begin
  P8.Click;
end;

procedure TMainForm.P13Click(Sender: TObject);
begin
  Memo1.Lines.Add(ClipBoard.AsText);
  Memo1.Lines[Memo1.Lines.Count -1];
  keybd_event(ORD(VK_RETURN), 0, 0, 0);
end;

procedure TMainForm.H1Click(Sender: TObject);
var
  InputString: string;
  ClickedOK: Boolean;
begin
  Screen.Cursor := crHourGlass;
  TimerInData.Enabled := false;
  InputString := '8.8.8.8';

  ClickedOK := InputQuery('IP from Host', 'Type Host IP to get Domain URL :', InputString);

  if ClickedOK = false then
  begin
    Screen.Cursor := crDefault;
    Exit;
  end;

  try
   Memo1.Lines.Add('');
   Memo1.Lines.Add(IPAddrToName(InputString));
   Memo1.Lines.Add(InputString);
  except
   Memo1.Lines.Add('Can`t determine Host from IP' + InputString);
  end;

  Memo1.Lines.Add(#13#10 + 'Ready.');
  Screen.Cursor := crDefault;
  Memo1.SetFocus;
end;

procedure TMainForm.Timer2Timer(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(MainDir + 'Data\Report\report.ini');
end;

procedure TMainForm.Options1Click(Sender: TObject);
begin
  ToolButton9.Click;
end;

procedure TMainForm.HostfromIP1Click(Sender: TObject);
begin
  H1.Click;
end;

procedure TMainForm.F1Click(Sender: TObject);
begin
  if F1.Checked = true then
  begin
    StatusBar4.Visible := true;
    F2.Checked := true;
  end else begin
    StatusBar4.Visible := false;
    F2.Checked := false;
  end;
end;

procedure TMainForm.F2Click(Sender: TObject);
begin
  F1.Click;
end;

procedure TMainForm.T8Click(Sender: TObject);
begin
  ToolButton27.Click;
end;


var mHandle: THandle;

procedure TMainForm.Memo1KeyPress(Sender: TObject; var Key: Char);
const
  ENTER = #13;
begin
  case Key of ENTER :
    begin
      TimerInData.Enabled := false;
      StatusBar1.Panels[4].Text := 'Stop!';
      cmd := 'cmd /c ' + Memo1.Lines[Memo1.Lines.Count - 1];
      Button1.Click;
      Memo1.Lines.Add(#13#10 + 'Ready.');
    end;
  end;
end;

procedure TMainForm.S5Click(Sender: TObject);
begin
  if S5.Checked = true then
  begin
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end else begin                          
  SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end;
end;

procedure TMainForm.H2Click(Sender: TObject);
begin
  if H2.Checked = true then
  begin
    ShowWindow( Application.Handle, SW_HIDE );
  end else begin
    ShowWindow( Application.Handle, SW_SHOW );
  end;
end;

procedure TMainForm.S6Click(Sender: TObject);
begin
  S5.Click;
end;

procedure TMainForm.H3Click(Sender: TObject);
begin
  H2.Click;
end;

procedure TMainForm.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
   // We might have multiple options, so let's use a case-select.
  case Panel.Index of
    3: begin
      ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 19);
      StatusBar.Canvas.TextOut((Rect.Left+5) +
                               ImageList1.Width,
                               Rect.Top, Panel.Text);
       end;
    
    4: begin
        if Form1.ComboBox1.ItemIndex = 0 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 20);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 1 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 21);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 2 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 22);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 3 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 23);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 4 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 24);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 5 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 25);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 6 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 26);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 7 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 27);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 8 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 28);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 9 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 29);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 10 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 30);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 11 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 31);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 12 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 32);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 13 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 33);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 14 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 34);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 15 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 35);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 16 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 36);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if Form1.ComboBox1.ItemIndex = 17 then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 37);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;

        if CheckBox1.Checked = false then
        begin
          ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top, 37);
          StatusBar.Canvas.TextOut((Rect.Left+5) + ImageList1.Width, Rect.Top, Panel.Text);
        end;
    end;
  end;
end;

procedure TMainForm.ToolButton1Click(Sender: TObject);
begin
  Start := not Start;
  ToolButton27.Enabled := true;

  if Start then
  begin
  disable;

  URG := StrToInt(StatusBar4.Panels[2].Text);
  ACK := StrToInt(StatusBar4.Panels[4].Text);
  PSH := StrToInt(StatusBar4.Panels[6].Text);
  RST := StrToInt(StatusBar4.Panels[8].Text);
  SYN := StrToInt(StatusBar4.Panels[10].Text);
  FIN := StrToInt(StatusBar4.Panels[12].Text);

  if Form1.CheckBox20.Checked = true then
  begin
    Timer2.Enabled := true;
  end;

    if Form1.RadioButton1.Checked then
      FThreadSniffer:= TThreadSniffer.Create(FPileTrameTCP,LocalIp,$1,$FFFF)
  else
      FThreadSniffer:= TThreadSniffer.Create(FPileTrameTCP,
      LocalIp,strtoint(Form1.Edit1.Text), StrToInt(Form1.Edit2.Text));
  end
  else begin
    FThreadSniffer.Terminate;
    Timer2.Enabled := false;
    enable;
  end;
end;

procedure TMainForm.ToolButton3Click(Sender: TObject);
begin
  Save1.Click;
end;

procedure TMainForm.ToolButton4Click(Sender: TObject);
begin
  Memo1.Clear;
  StatusBar4.Panels[2].Text := '0';
  StatusBar4.Panels[4].Text := '0';
  StatusBar4.Panels[6].Text := '0';
  StatusBar4.Panels[8].Text := '0';
  StatusBar4.Panels[10].Text := '0';
  StatusBar4.Panels[12].Text := '0';
  Memo1.Lines.Add(#13#10 + 'Ready.');
end;

procedure TMainForm.ToolButton5Click(Sender: TObject);
begin
  Font1.Click;
end;

procedure TMainForm.ToolButton6Click(Sender: TObject);
begin
  Memo1.SelectAll;
  Memo1.CopyToClipboard;
  Memo1.Lines.Add('Copy to Clipboard..' + #13#10 + 'Ready.');
end;

procedure TMainForm.ToolButton8Click(Sender: TObject);
begin
  Background1.Click;
end;

procedure TMainForm.ToolButton9Click(Sender: TObject);
begin
  try
    form1 := TForm1.Create(self);
    form1.ShowModal;
  finally
  end;
end;

procedure TMainForm.ToolButton11Click(Sender: TObject);
var
  NewString : string;
  ClickedOK: Boolean;
  i : integer;
begin
  Screen.Cursor := crHourGlass;
  NewString := 'www.google.de';

  ClickedOK := InputQuery('Ping Address', 'Type IP or URL :', NewString);

  if ClickedOK then
  begin
    ping := NewString;
  end else begin
    Screen.Cursor := crDefault;
    Exit;
  end;

  ping := NewString;
  TimerInData.Enabled := false;

 IdIcmpClient1.Host := NewString;
 IdIcmpClient1.BufferSize := StrToInt(Form1.Edit4.Text);
 IdIcmpClient1.Port := StrToInt(Form1.Edit3.Text);
 IdIcmpClient1.ReceiveTimeout := Form1.SpinEdit2.Value;

 case Form1.ComboBox3.ItemIndex of
 0 : IdIcmpClient1.Protocol := 1;
 1 : IdIcmpClient1.Protocol := 0;
 end;

 Memo1.Lines.Add('Sniffer stopped !');
 Memo1.Lines.Add('Ping Address..: ' + NewString + ' | Packet Size : ' + Form1.Edit4.Text + ' bytes');
 Memo1.Lines.Add('Protocol : ' + Form1.ComboBox3.Text + ' | Port : ' + Form1.Edit3.Text +
                 ' | Ping Count : ' + IntToStr(Form1.SpinEdit1.Value) + ' | Receive Timeout : ' + IntToStr(Form1.SpinEdit2.Value));
 Memo1.Lines.Add('');

 for i := 1 to Form1.SpinEdit1.Value do
 begin
   IdIcmpClient1.Ping;
   Application.ProcessMessages;
 end;

 Memo1.Lines.Add(#13#10 + 'Ready.');
 Memo1.SetFocus;
 Screen.Cursor := crDefault;
end;

procedure TMainForm.ToolButton12Click(Sender: TObject);
begin
  IPs1.Click;
end;

procedure TMainForm.ToolButton13Click(Sender: TObject);
begin
  S1.Click;
end;

procedure TMainForm.ToolButton15Click(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TMainForm.ToolButton16Click(Sender: TObject);
begin
  R1.Click;
end;

procedure TMainForm.ToolButton17Click(Sender: TObject);
begin
  I5.Click;
end;

procedure TMainForm.ToolButton19Click(Sender: TObject);
begin
  H1.Click;
end;

procedure TMainForm.ToolButton20Click(Sender: TObject);
begin
  P1.Click;
end;

procedure TMainForm.ToolButton23Click(Sender: TObject);
begin
  ToolButton23.ImageIndex := 38;
  Screen.Cursor := crHourGlass;
  Label1.Caption := '  scan..  ';
  Application.ProcessMessages;
  Sleep(500);
  Label1.Caption := '  ' + LocalIp + '  ';
  Screen.Cursor := crDefault;
  ToolButton23.ImageIndex := 16;
end;

procedure TMainForm.ToolButton25Click(Sender: TObject);
begin
  ToolButton25.ImageIndex := 38;
  Screen.Cursor := crHourGlass;
  Label2.Caption := '  wait..  ';
  Application.ProcessMessages;
  Sleep(500);
  Label2.Caption := '  ' + ExternalIp + '  ';
  Screen.Cursor := crDefault;
  ToolButton25.ImageIndex := 17;
end;

procedure TMainForm.ToolButton27Click(Sender: TObject);
begin
  KillProcess(GetProcessID(ExtractFileName(Application.ExeName)));
end;

procedure TMainForm.StartSniffer1Click(Sender: TObject);
begin
  ToolButton1.Click;
end;

procedure TMainForm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    StatusBar1.Panels[6].Text := 'Monitoring on.';
    Form1.ComboBox1.OnChange(sender);
  end else begin
    StatusBar1.Panels[5].Text := '-';
    StatusBar1.Panels[6].Text := 'Monitoring off.';
  end;
  StatusBar1.Repaint;
  StatusBar1.SetFocus;
end;

procedure TMainForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  // update external ip
  //Label2.Caption := '  ' + ExternalIp + '  ';
end;

procedure TMainForm.Timer3Timer(Sender: TObject);
begin
  Label2.Caption := '  ' + ExternalIp + '  ';
  ToolButton25.ImageIndex := 17;
  Timer3.Enabled := false;
end;

procedure TMainForm.T9Click(Sender: TObject);
begin
  Panel1.Align := alRight;
  Panel1.Visible := true;
  Panel3.Visible := false;
  Panel4.Visible := false;
  Panel5.Visible := false;
  Panel6.Visible := false;
  CPUDP1.Checked := true;
end;

procedure TMainForm.A4Click(Sender: TObject);
begin
  Panel1.Visible := false;
  Panel3.Align := alRight;
  Panel3.Visible := true;
  Panel4.Visible := false;
  Panel5.Visible := false;
  Panel6.Visible := false;
  ARP1.Checked := true;
end;

procedure TMainForm.R6Click(Sender: TObject);
begin
  Panel1.Visible := false;
  Panel4.Align := alRight;
  Panel3.Visible := false;
  Panel4.Visible := true;
  Panel5.Visible := false;
  Panel6.Visible := false;
  Routing1.Checked := true;
end;

procedure TMainForm.L1Click(Sender: TObject);
begin
  Panel1.Visible := false;
  Panel5.Align := alRight;
  Panel3.Visible := false;
  Panel4.Visible := false;
  Panel5.Visible := true;
  Panel6.Visible := false;
  Listening1.Checked := true;
end;

procedure TMainForm.A5Click(Sender: TObject);
begin
  Panel1.Visible := false;
  Panel6.Align := alRight;
  Panel3.Visible := false;
  Panel4.Visible := false;
  Panel5.Visible := false;
  Panel6.Visible := true;
  Adapter1.Checked := true;
end;

procedure TMainForm.N42Click(Sender: TObject);
begin
  Panel1.Visible := false;
  Panel3.Visible := false;
  Panel4.Visible := false;
  Panel5.Visible := false;
  Panel6.Visible := false;
  None1.Checked := true;
end;

procedure TMainForm.U1Click(Sender: TObject);
begin
  DoIPStuff;
end;

procedure TMainForm.H4Click(Sender: TObject);
var
  IPadr         : dword;
  Rtt, HopCount : longint;
  Res           : integer;
  ClickedOK     : boolean;
  hops          : string;
begin
  //btRTTI.Enabled := false;

  TimerInData.Enabled := false;
  hops := '0.0.0.0';

  ClickedOK := InputQuery('IP from Host', 'Type Domain URL to get IP :', hops);

  if ClickedOK = false then
  begin
    Screen.Cursor := crDefault;
    Exit;
  end;



  Screen.Cursor := crHourGlass;
  IPadr := Str2IPAddr( hops );
  Res := Get_RTTAndHopCount( IPadr, 128, RTT, HopCount );
  if Res = NO_ERROR then
    ShowMessage( ' Round Trip Time '
      + inttostr( rtt ) + ' ms, '
      + inttostr( HopCount )
      + ' hops to : ' + hops
      )
  else
    ShowMessage( 'Error occurred:' + #13
                 + ICMPErr2Str( Res ) ) ;
  Screen.Cursor := crDefault;
end;

procedure TMainForm.HopsMeasurement1Click(Sender: TObject);
begin
  H4.Click;
end;

procedure TMainForm.U2Click(Sender: TObject);
begin
  DoIPStuff;
end;

procedure TMainForm.CPUDP1Click(Sender: TObject);
begin
  T9.OnClick(sender);
  T9.Checked := true;
end;

procedure TMainForm.ARP1Click(Sender: TObject);
begin
  A4.OnClick(sender);
  A4.Checked := true;
end;

procedure TMainForm.Routing1Click(Sender: TObject);
begin
  R6.OnClick(sender);
  R6.Checked := true;
end;

procedure TMainForm.Listening1Click(Sender: TObject);
begin
  L1.OnClick(sender);
  L1.Checked := true;
end;

procedure TMainForm.Adapter1Click(Sender: TObject);
begin
  A5.OnClick(sender);
  A5.Checked := true;
end;

procedure TMainForm.None1Click(Sender: TObject);
begin
  N42.OnClick(sender);
  N42.Checked := true;
end;

initialization
  mHandle := CreateMutex(nil, True, 'xyz');
  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    ShowMessage('Port Sniffer is already running !');
    halt;
  end;
  finalization
  if mHandle <> 0 then CloseHandle(mHandle);

end.
