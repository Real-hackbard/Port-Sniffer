unit UnitThreadSniffer;

interface

uses
  Classes,Windows,SysUtils,
  UWinsockErreurs,
  UnitGlobal, UnitPileTrame;
type
  TThreadSniffer = class(TThread)
  private
    FIp        : string;
    FStartPort : word;
    FEndPort   : word;
    FDrapeaux  : set of TFlags;
    FPileTrameTcp : TPileTrameTcp;
    procedure SendErreur(Code: word);
  protected
    procedure Execute; override;
  public
    constructor Create(PileTrameTcp: TPileTrameTcp; Ip: string; aStartPort,aEndPort: Word);
  end;
  ESockError = class(Exception);

var
  ThreadSniffer: TThreadSniffer;

implementation

uses WinSock2;

procedure TThreadSniffer.SendErreur(Code: word);
begin
end;

constructor TThreadSniffer.Create(PileTrameTcp: TPileTrameTcp; Ip: string; aStartPort,aEndPort: Word);
begin
  inherited create(True);
  FPileTrameTcp:= PileTrameTcp;
  FIp:= Ip;
  FStartPort:= aStartPort;
  FEndPort:= aEndPort;
  FreeOnTerminate:= true;
  resume;
end;


procedure TThreadSniffer.Execute;
const
  MAX_BUFFER = $FFFF;
var
  PortSource      : word;
  PortDestination : word;
  Drap            : set of TFlags;
  Sock            : TSocket;
  SockAdr         : TSockAddrIn;
  buffer          : Array[0..MAX_BUFFER] of char;
  BufferInlen     : dword;
  byteret         : dword;
  info            : TWSAData ;
  Sio             : dword;
  bufTcp          : Pchar;
  TrameTCP        : PTrameTCP;


begin
  BufferInLen:=TH_NETDEV;
  ByteRet:= 0;
  if WSAStartup(MakeWord(2,2),info)<>0 then
  begin
    SendErreur(WSAGetLastError);
    exit;
  end;


  try
    Sock := Socket(AF_INET, SOCK_RAW,IPPROTO_IP);
    SockAdr.sin_addr.S_addr := inet_addr(pchar(FIp));
    SockAdr.sin_family := AF_INET;
    SockAdr.sin_port := 0;

    if bind(Sock,@SockAdr,Sizeof(SockAdr))<>0 then
    begin
      SendErreur(WSAGetLastError);
      WSACleanUp;
      exit;
    end ;

    SIO:=  SIO_ASSOCIATE_HANDLE or IOC_VENDOR;
    if WSAIoctl(Sock,SIO,@BufferInLen,Sizeof(BufferInLen),
                nil,0,@byteret,nil,nil) <> 0 then
    begin

      SendErreur(WSAGetLastError);
      closesocket(Sock) ;
      WSACleanUp;
      exit;
    end;

    while not Terminated do
    begin

      if recv(Sock,buffer,MAX_BUFFER,0)<0 then
      begin
        SendErreur(WSAGetLastError);
        closesocket(Sock) ;
        WSACleanUp;
        exit;
      end;


      buftcp:=  @Buffer[(byte(Buffer[0]) and $0F)*4];

      case byte(Buffer[9]) of
        IPPROTO_IP:;             { dummy for IP }
        IPPROTO_ICMP:;           { control message protocol }
        IPPROTO_IGMP:;           { group management protocol }
        IPPROTO_GGP:;            { gateway^2 (deprecated) }

        IPPROTO_TCP:
        begin
          PortSource:= 256*byte(buftcp[0])+byte(buftcp[1]);
          PortDestination:= 256*byte(buftcp[2])+byte(buftcp[3]);
          if ((PortSource>= FStartPort) and (PortSource<= FEndPort)) or
             ((PortDestination>= FStartPort) and (PortDestination<= FEndPort)) then
          begin
            Drap:= [];
            if (byte(buftcp[13]) and 32)=32 then Drap:= Drap + [drp_URG];
            if (byte(buftcp[13]) and 16)=16 then Drap:= Drap + [drp_ACK];
            if (byte(buftcp[13]) and 08)=08 then Drap:= Drap + [drp_PSH];
            if (byte(buftcp[13]) and 04)=04 then Drap:= Drap + [drp_RST];
            if (byte(buftcp[13]) and 02)=02 then Drap:= Drap + [drp_SYN];
            if (byte(buftcp[13]) and 01)=01 then Drap:= Drap + [drp_FIN];

            if true then
            begin

              new(TrameTCP);
              with TrameTCP^ do
              try
                TimeStamp:= now;
                Source.Ip:= inttostr(ord(Buffer[12]))+'.'+
                            inttostr(ord(Buffer[13]))+'.'+
                            inttostr(ord(Buffer[14]))+'.'+
                            inttostr(ord(Buffer[15]));
                Source.Port:= PortSource;
                Destination.Ip:= inttostr(ord(Buffer[16]))+'.'+
                                 inttostr(ord(Buffer[17]))+'.'+
                                 inttostr(ord(Buffer[18]))+'.'+
                                inttostr(ord(Buffer[19]));
                Destination.Port:= PortDestination;

          
                StateFlags:= Drap;
                Buffer[256*byte(Buffer[2])+byte(Buffer[3])]:=#0;
                data := string(pchar(@buftcp[((byte(BufTcp[12]) and $F0)shr 4)*4]));
                FPileTrameTcp.Push(TrameTcp);
              except
                Dispose(TrameTCP);
              end;
            end;
          end;
        end;
        IPPROTO_PUP:;            { pup }
        IPPROTO_UDP:;            { user datagram protocol }
        IPPROTO_IDP:;            { xns idp }
        IPPROTO_ND:;             { UNOFFICIAL net disk proto }
        IPPROTO_RAW:;            { raw IP packet }
      end;
    end;
  finally
    closesocket(Sock) ;
    WSACleanUp;
  end;
end;

end.
