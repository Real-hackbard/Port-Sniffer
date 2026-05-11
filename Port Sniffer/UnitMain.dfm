object MainForm: TMainForm
  Left = 246
  Top = 138
  Width = 870
  Height = 641
  Caption = 'Port Sniffer'
  Color = clBtnFace
  Constraints.MinHeight = 160
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 563
    Width = 854
    Height = 19
    Panels = <
      item
        Text = 'Stop!'
        Width = 110
      end
      item
        Text = 'Counts :'
        Width = 55
      end
      item
        Text = '0'
        Width = 100
      end
      item
        Style = psOwnerDraw
        Text = '0 Day, 0 Std, 0 Min,0 Sec'
        Width = 250
      end
      item
        Style = psOwnerDraw
        Width = 20
      end
      item
        Width = 150
      end
      item
        Text = 'Monitoring on.'
        Width = 50
      end>
    OnDrawPanel = StatusBar1DrawPanel
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 854
    Height = 534
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object StatusBar4: TStatusBar
      Left = 0
      Top = 515
      Width = 854
      Height = 19
      Panels = <
        item
          Text = 'Filters :'
          Width = 50
        end
        item
          Text = 'URG :'
          Width = 40
        end
        item
          Text = '0'
          Width = 60
        end
        item
          Text = 'ACK :'
          Width = 40
        end
        item
          Text = '0'
          Width = 60
        end
        item
          Text = 'PSH :'
          Width = 40
        end
        item
          Text = '0'
          Width = 60
        end
        item
          Text = 'RST :'
          Width = 40
        end
        item
          Text = '0'
          Width = 60
        end
        item
          Text = 'SYN :'
          Width = 40
        end
        item
          Text = '0'
          Width = 60
        end
        item
          Text = 'FIN :'
          Width = 40
        end
        item
          Text = '0'
          Width = 60
        end>
    end
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 389
      Height = 515
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = OEM_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Terminal'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      ScrollBars = ssBoth
      TabOrder = 1
      OnKeyPress = Memo1KeyPress
    end
    object Panel1: TPanel
      Left = 389
      Top = 0
      Width = 465
      Height = 515
      Align = alRight
      TabOrder = 2
      Visible = False
      DesignSize = (
        465
        515)
      object TCPStatMemo: TMemo
        Left = 5
        Top = 0
        Width = 268
        Height = 304
        Anchors = [akLeft, akTop, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'TCPStatMemo')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssHorizontal
        TabOrder = 0
      end
      object ICMPInMemo: TMemo
        Left = 4
        Top = 304
        Width = 133
        Height = 205
        Anchors = [akLeft, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssHorizontal
        TabOrder = 1
      end
      object ICMPOutMemo: TMemo
        Left = 136
        Top = 304
        Width = 137
        Height = 205
        Anchors = [akLeft, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssHorizontal
        TabOrder = 2
      end
      object IPStatsMemo: TMemo
        Left = 272
        Top = 0
        Width = 185
        Height = 305
        Anchors = [akLeft, akTop, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'IPStatsMemo')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssHorizontal
        TabOrder = 3
      end
      object UDPStatsMemo: TMemo
        Left = 272
        Top = 304
        Width = 185
        Height = 205
        Anchors = [akLeft, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'UDPStatsMemo')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssHorizontal
        TabOrder = 4
      end
    end
    object Panel3: TPanel
      Left = 383
      Top = 3
      Width = 465
      Height = 513
      Caption = 'Panel3'
      TabOrder = 3
      Visible = False
      DesignSize = (
        465
        513)
      object ARPMemo: TMemo
        Left = 3
        Top = 0
        Width = 474
        Height = 329
        Anchors = [akLeft, akTop, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
      object NwMemo: TMemo
        Left = 3
        Top = 328
        Width = 457
        Height = 185
        Anchors = [akLeft, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WordWrap = False
      end
    end
    object Panel4: TPanel
      Left = 384
      Top = 0
      Width = 463
      Height = 513
      TabOrder = 4
      DesignSize = (
        463
        513)
      object IPForwMemo: TMemo
        Left = 1
        Top = -2
        Width = 462
        Height = 355
        Anchors = [akLeft, akTop, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
      end
      object IPAddrMemo: TMemo
        Left = 1
        Top = 351
        Width = 462
        Height = 161
        Anchors = [akLeft, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
        WordWrap = False
      end
    end
    object Panel5: TPanel
      Left = 384
      Top = 0
      Width = 465
      Height = 515
      TabOrder = 5
      DesignSize = (
        465
        515)
      object TCPMemo: TMemo
        Left = 0
        Top = 0
        Width = 465
        Height = 257
        Anchors = [akLeft, akTop, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        WordWrap = False
      end
      object UDPMemo: TMemo
        Left = 0
        Top = 256
        Width = 465
        Height = 265
        Anchors = [akLeft, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WordWrap = False
      end
    end
    object Panel6: TPanel
      Left = 384
      Top = 0
      Width = 465
      Height = 515
      Caption = 'Panel6'
      TabOrder = 6
      DesignSize = (
        465
        515)
      object AdaptMemo: TMemo
        Left = 0
        Top = 0
        Width = 465
        Height = 121
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
      object IfMemo: TMemo
        Left = 0
        Top = 120
        Width = 465
        Height = 393
        Anchors = [akLeft, akTop, akBottom]
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 11
    Top = 41
    Width = 25
    Height = 0
    TabOrder = 2
    OnDocumentComplete = WebBrowser1DocumentComplete
    ControlData = {
      4C00000095020000000000000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 854
    Height = 29
    Caption = 'ToolBar1'
    Ctl3D = False
    EdgeInner = esNone
    EdgeOuter = esNone
    Images = ImageList1
    TabOrder = 3
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Hint = 'Start/Stop Sniffer'
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 31
      Top = 2
      Hint = 'Save Report'
      Caption = 'ToolButton3'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 54
      Top = 2
      Hint = 'Clear Report'
      Caption = 'ToolButton4'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 77
      Top = 2
      Hint = 'Font'
      Caption = 'ToolButton5'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
    object ToolButton6: TToolButton
      Left = 100
      Top = 2
      Hint = 'Copy to Clipboard..'
      Caption = 'ToolButton6'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton6Click
    end
    object ToolButton7: TToolButton
      Left = 123
      Top = 2
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 131
      Top = 2
      Hint = 'Background Color'
      Caption = 'ToolButton8'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton8Click
    end
    object ToolButton9: TToolButton
      Left = 154
      Top = 2
      Hint = 'Options'
      Caption = 'ToolButton9'
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton9Click
    end
    object ToolButton10: TToolButton
      Left = 177
      Top = 2
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 185
      Top = 2
      Hint = 'Ping Address'
      Caption = 'ToolButton11'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton11Click
    end
    object ToolButton12: TToolButton
      Left = 208
      Top = 2
      Hint = 'IP Info'
      Caption = 'ToolButton12'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton12Click
    end
    object ToolButton13: TToolButton
      Left = 231
      Top = 2
      Hint = 'Systeminfo'
      Caption = 'ToolButton13'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton13Click
    end
    object ToolButton14: TToolButton
      Left = 254
      Top = 2
      Width = 8
      Caption = 'ToolButton14'
      ImageIndex = 11
      Style = tbsSeparator
    end
    object ToolButton15: TToolButton
      Left = 262
      Top = 2
      Hint = 'Search IP'
      Caption = 'ToolButton15'
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton15Click
    end
    object ToolButton18: TToolButton
      Left = 285
      Top = 2
      Width = 8
      Caption = 'ToolButton18'
      ImageIndex = 14
      Style = tbsSeparator
    end
    object ToolButton16: TToolButton
      Left = 293
      Top = 2
      Hint = 'Read Cookies'
      Caption = 'ToolButton16'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton16Click
    end
    object ToolButton17: TToolButton
      Left = 316
      Top = 2
      Hint = 'Read IP from Host'
      Caption = 'ToolButton17'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton17Click
    end
    object ToolButton19: TToolButton
      Left = 339
      Top = 2
      Hint = 'Read Host from IP'
      Caption = 'ToolButton19'
      ImageIndex = 14
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton19Click
    end
    object ToolButton21: TToolButton
      Left = 362
      Top = 2
      Width = 8
      Caption = 'ToolButton21'
      ImageIndex = 16
      Style = tbsSeparator
    end
    object ToolButton20: TToolButton
      Left = 370
      Top = 2
      Hint = 'Show Listening Ports'
      Caption = 'ToolButton20'
      ImageIndex = 15
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton20Click
    end
    object ToolButton22: TToolButton
      Left = 393
      Top = 2
      Width = 16
      Caption = 'ToolButton22'
      ImageIndex = 16
      Style = tbsSeparator
    end
    object ToolButton23: TToolButton
      Left = 409
      Top = 2
      Hint = 'Update Local Network Ip'
      Caption = 'ToolButton23'
      ImageIndex = 16
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton23Click
    end
    object Label1: TLabel
      Left = 432
      Top = 2
      Width = 37
      Height = 22
      Alignment = taCenter
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object ToolButton24: TToolButton
      Left = 469
      Top = 2
      Width = 8
      Caption = 'ToolButton24'
      ImageIndex = 17
      Style = tbsSeparator
    end
    object ToolButton25: TToolButton
      Left = 477
      Top = 2
      Hint = 'Update External Ip'
      Caption = 'ToolButton25'
      ImageIndex = 38
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton25Click
    end
    object Label2: TLabel
      Left = 500
      Top = 2
      Width = 37
      Height = 22
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object ToolButton26: TToolButton
      Left = 537
      Top = 2
      Width = 8
      Caption = 'ToolButton26'
      ImageIndex = 18
      Style = tbsSeparator
    end
    object ToolButton27: TToolButton
      Left = 545
      Top = 2
      Hint = 'Terminate'
      Caption = 'ToolButton27'
      ImageIndex = 18
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton27Click
    end
    object CheckBox1: TCheckBox
      Left = 568
      Top = 2
      Width = 121
      Height = 22
      TabStop = False
      Alignment = taLeftJustify
      Caption = '   Browser Monitoring'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object Button1: TButton
      Left = 689
      Top = 2
      Width = 33
      Height = 22
      Caption = 'cmd'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object ListBox1: TListBox
      Left = 722
      Top = 2
      Width = 33
      Height = 22
      TabStop = False
      ItemHeight = 13
      TabOrder = 1
      Visible = False
    end
  end
  object TimerInData: TTimer
    Enabled = False
    OnTimer = TimerInDataTimer
    Left = 64
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList1
    Left = 24
    Top = 112
    object StartSniffer1: TMenuItem
      Caption = 'Start Sniffer'
      ImageIndex = 0
      OnClick = StartSniffer1Click
    end
    object N38: TMenuItem
      Caption = '-'
    end
    object T8: TMenuItem
      Caption = 'Terminate'
      ImageIndex = 18
      OnClick = T8Click
    end
    object Save2: TMenuItem
      Caption = 'Save'
      ImageIndex = 2
      OnClick = Save2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object M3: TMenuItem
      Caption = 'Monitors'
      object U2: TMenuItem
        Caption = 'Update'
        OnClick = U2Click
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object CPUDP1: TMenuItem
        AutoCheck = True
        Caption = 'TCP / UDP'
        RadioItem = True
        OnClick = CPUDP1Click
      end
      object ARP1: TMenuItem
        AutoCheck = True
        Caption = 'ARP'
        RadioItem = True
        OnClick = ARP1Click
      end
      object Routing1: TMenuItem
        AutoCheck = True
        Caption = 'Routing'
        RadioItem = True
        OnClick = Routing1Click
      end
      object Listening1: TMenuItem
        AutoCheck = True
        Caption = 'Listening'
        RadioItem = True
        OnClick = Listening1Click
      end
      object Adapter1: TMenuItem
        AutoCheck = True
        Caption = 'Adapter'
        RadioItem = True
        OnClick = Adapter1Click
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object None1: TMenuItem
        Caption = 'None'
        RadioItem = True
        OnClick = None1Click
      end
    end
    object T3: TMenuItem
      Caption = 'Tools'
      object HopsMeasurement1: TMenuItem
        Caption = 'Hops Measurement'
        OnClick = HopsMeasurement1Click
      end
      object N45: TMenuItem
        Caption = '-'
      end
      object P9: TMenuItem
        Caption = 'Ping'
        object P2: TMenuItem
          Caption = 'Ping Router'
          OnClick = P2Click
        end
        object P4: TMenuItem
          Caption = 'Ping Address'
          OnClick = P4Click
        end
      end
      object I10: TMenuItem
        Caption = 'IP'
        object I2: TMenuItem
          Caption = 'IPs'
          OnClick = I2Click
        end
        object I3: TMenuItem
          Caption = 'IP Config'
          OnClick = I3Click
        end
        object I4: TMenuItem
          Caption = 'IP from Host'
          OnClick = I4Click
        end
        object H1: TMenuItem
          Caption = 'Host from IP'
          OnClick = H1Click
        end
        object N12: TMenuItem
          Caption = '-'
        end
        object T5: TMenuItem
          Caption = 'Tracert IP'
          OnClick = T5Click
        end
      end
      object C2: TMenuItem
        Caption = 'Cookies'
        object R3: TMenuItem
          Caption = 'Read'
          OnClick = R3Click
        end
        object Delete1: TMenuItem
          Caption = 'Delete'
          OnClick = Delete1Click
        end
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object N27: TMenuItem
        Caption = 'Network'
        object N13: TMenuItem
          Caption = 'Net Statistic'
          OnClick = N13Click
        end
        object NetUpDown1: TMenuItem
          Caption = 'Net Up/Down'
          OnClick = NetUpDown1Click
        end
        object N14: TMenuItem
          Caption = 'Network Share'
          OnClick = N14Click
        end
        object N28: TMenuItem
          Caption = 'Net Heuristics'
          OnClick = N28Click
        end
        object ProtokollStatus2: TMenuItem
          Caption = 'Protokoll Status'
          OnClick = ProtokollStatus2Click
        end
        object N30: TMenuItem
          Caption = '-'
        end
        object A3: TMenuItem
          Caption = 'ARP'
          OnClick = A3Click
        end
        object D5: TMenuItem
          Caption = 'DNS'
          OnClick = D5Click
        end
        object N31: TMenuItem
          Caption = '-'
        end
        object N16: TMenuItem
          Caption = 'NSLookUp'
          OnClick = N16Click
        end
        object N32: TMenuItem
          Caption = '-'
        end
        object B2: TMenuItem
          Caption = 'Boost Streaming'
          OnClick = B2Click
        end
      end
      object W5: TMenuItem
        Caption = 'WLAN'
        object P11: TMenuItem
          Caption = 'Profile Name'
          OnClick = P11Click
        end
        object P12: TMenuItem
          Caption = 'Profile Password'
          OnClick = P12Click
        end
      end
      object P10: TMenuItem
        Caption = 'Port'
        object PortStatistic1: TMenuItem
          Caption = 'Port Listening'
          OnClick = PortStatistic1Click
        end
        object SocketRouting1: TMenuItem
          Caption = 'Socket Routing'
          OnClick = SocketRouting1Click
        end
      end
      object D8: TMenuItem
        Caption = 'Delete'
        object D4: TMenuItem
          Caption = 'Cache'
          OnClick = D4Click
        end
        object T7: TMenuItem
          Caption = 'Temp'
          OnClick = T7Click
        end
        object D7: TMenuItem
          Caption = 'DNS Flush'
          OnClick = D7Click
        end
      end
      object N40: TMenuItem
        Caption = '-'
      end
      object S4: TMenuItem
        Caption = 'System'
        object S2: TMenuItem
          Caption = 'Systeminfo'
          OnClick = S2Click
        end
        object N33: TMenuItem
          Caption = '-'
        end
        object R5: TMenuItem
          Caption = 'Route'
          OnClick = R5Click
        end
        object RouteStatistic1: TMenuItem
          Caption = 'Route Statistic'
          OnClick = RouteStatistic1Click
        end
        object MACAddress1: TMenuItem
          Caption = 'MAC Address'
          OnClick = MACAddress1Click
        end
        object WhoAmi1: TMenuItem
          Caption = 'WhoAmi'
          OnClick = WhoAmi1Click
        end
        object N34: TMenuItem
          Caption = '-'
        end
        object I11: TMenuItem
          Caption = 'Installed Programs'
          OnClick = I11Click
        end
        object I12: TMenuItem
          Caption = 'Installed Drivers'
          OnClick = I12Click
        end
        object InstalledDriversOutputList1: TMenuItem
          Caption = 'Installed Drivers Output List'
          OnClick = InstalledDriversOutputList1Click
        end
      end
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Caption = 'Copy'
      ImageIndex = 5
      OnClick = Copy1Click
    end
    object P13: TMenuItem
      Caption = 'Paste'
      OnClick = P13Click
    end
    object Clearlog1: TMenuItem
      Caption = 'Clear log'
      ImageIndex = 3
      OnClick = Clearlog1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Options1: TMenuItem
      Caption = 'Options'
      ImageIndex = 7
      OnClick = Options1Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object V1: TMenuItem
      Caption = 'View'
      object Font2: TMenuItem
        Caption = 'Font'
        OnClick = Font2Click
      end
      object Background2: TMenuItem
        Caption = 'Background'
        OnClick = Background2Click
      end
      object N37: TMenuItem
        Caption = '-'
      end
      object F2: TMenuItem
        AutoCheck = True
        Caption = 'Filter Bar'
        OnClick = F2Click
      end
      object StatusBar3: TMenuItem
        AutoCheck = True
        Caption = 'Status Bar'
        OnClick = StatusBar3Click
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object T2: TMenuItem
        AutoCheck = True
        Caption = 'Tool Bar'
        OnClick = T2Click
      end
      object S6: TMenuItem
        Caption = 'Stay Top'
        OnClick = S6Click
      end
      object H3: TMenuItem
        Caption = 'Hide on Task'
        OnClick = H3Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 112
    object File1: TMenuItem
      Caption = 'Sniffer'
      object StartSniffer2: TMenuItem
        Caption = 'Start Sniffer'
        ShortCut = 112
        OnClick = StartSniffer2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Save1: TMenuItem
        Caption = 'Save..'
        OnClick = Save1Click
      end
      object Clear1: TMenuItem
        Caption = 'Clear..'
        ShortCut = 114
        OnClick = Clear1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Options2: TMenuItem
        Caption = 'Options'
        ShortCut = 113
        OnClick = Options2Click
      end
      object N36: TMenuItem
        Caption = '-'
      end
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
    object M2: TMenuItem
      Caption = 'Monitors'
      object U1: TMenuItem
        Caption = 'Update'
        OnClick = U1Click
      end
      object N43: TMenuItem
        Caption = '-'
      end
      object T9: TMenuItem
        AutoCheck = True
        Caption = 'TCP / UDP'
        RadioItem = True
        ShortCut = 16496
        OnClick = T9Click
      end
      object A4: TMenuItem
        AutoCheck = True
        Caption = 'ARP'
        RadioItem = True
        ShortCut = 16497
        OnClick = A4Click
      end
      object R6: TMenuItem
        AutoCheck = True
        Caption = 'Routing'
        RadioItem = True
        ShortCut = 16498
        OnClick = R6Click
      end
      object L1: TMenuItem
        AutoCheck = True
        Caption = 'Listening'
        RadioItem = True
        ShortCut = 16499
        OnClick = L1Click
      end
      object A5: TMenuItem
        AutoCheck = True
        Caption = 'Adapter'
        RadioItem = True
        ShortCut = 16500
        OnClick = A5Click
      end
      object N41: TMenuItem
        Caption = '-'
      end
      object N42: TMenuItem
        AutoCheck = True
        Caption = 'None'
        RadioItem = True
        ShortCut = 16507
        OnClick = N42Click
      end
    end
    object T1: TMenuItem
      Caption = 'Tools'
      object H4: TMenuItem
        Caption = 'Hops Measurement'
        OnClick = H4Click
      end
      object N44: TMenuItem
        Caption = '-'
      end
      object P5: TMenuItem
        Caption = 'Ping'
        object PingRouter1: TMenuItem
          Caption = 'Ping Router'
          OnClick = PingRouter1Click
        end
        object P3: TMenuItem
          Caption = 'Ping Address'
          ShortCut = 16464
          OnClick = P3Click
        end
      end
      object I6: TMenuItem
        Caption = 'IP'
        object IPs1: TMenuItem
          Caption = 'IPs'
          ShortCut = 16457
          OnClick = IPs1Click
        end
        object I1: TMenuItem
          Caption = 'IP Config'
          OnClick = I1Click
        end
        object I5: TMenuItem
          Caption = 'IP from Host'
          ShortCut = 16456
          OnClick = I5Click
        end
        object HostfromIP1: TMenuItem
          Caption = 'Host from IP'
          ShortCut = 16460
          OnClick = HostfromIP1Click
        end
        object N22: TMenuItem
          Caption = '-'
        end
        object T4: TMenuItem
          Caption = 'Tracert IP'
          OnClick = T4Click
        end
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object C1: TMenuItem
        Caption = 'Cookies'
        object R1: TMenuItem
          Caption = 'Read'
          OnClick = R1Click
        end
        object D1: TMenuItem
          Caption = 'Delete'
          OnClick = D1Click
        end
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N18: TMenuItem
        Caption = 'Network'
        object N8: TMenuItem
          Caption = 'Net Statistik'
          ShortCut = 16462
          OnClick = N8Click
        end
        object A2: TMenuItem
          Caption = 'Net Up/Down'
          OnClick = A2Click
        end
        object N9: TMenuItem
          Caption = 'Network Share'
          OnClick = N9Click
        end
        object N25: TMenuItem
          Caption = 'Net Heuristics'
          OnClick = N25Click
        end
        object Protokollstatus1: TMenuItem
          Caption = 'Protokoll Status'
          ShortCut = 16467
          OnClick = Protokollstatus1Click
        end
        object N20: TMenuItem
          Caption = '-'
        end
        object D3: TMenuItem
          Caption = 'DNS'
          OnClick = D3Click
        end
        object A1: TMenuItem
          Caption = 'ARP'
          ShortCut = 16449
          OnClick = A1Click
        end
        object N19: TMenuItem
          Caption = '-'
        end
        object N15: TMenuItem
          Caption = 'NSLookUp'
          OnClick = N15Click
        end
        object N26: TMenuItem
          Caption = '-'
        end
        object B1: TMenuItem
          Caption = 'Boost Streaming'
          OnClick = B1Click
        end
      end
      object W4: TMenuItem
        Caption = 'WLAN'
        object P7: TMenuItem
          Caption = 'Profile Name'
          OnClick = P7Click
        end
        object P8: TMenuItem
          Caption = 'Profile Password'
          OnClick = P8Click
        end
      end
      object P6: TMenuItem
        Caption = 'Port'
        object P1: TMenuItem
          Caption = 'Port Listening'
          ShortCut = 16460
          OnClick = P1Click
        end
        object SocketundRouting1: TMenuItem
          Caption = 'Socket Routing'
          OnClick = SocketundRouting1Click
        end
      end
      object D2: TMenuItem
        Caption = 'Delete'
        object C3: TMenuItem
          Caption = 'Cache'
          ShortCut = 16451
          OnClick = C3Click
        end
        object T6: TMenuItem
          Caption = 'Temp'
          ShortCut = 16468
          OnClick = T6Click
        end
        object N29: TMenuItem
          Caption = '-'
        end
        object D6: TMenuItem
          Caption = 'DNS Flush'
          OnClick = D6Click
        end
      end
      object N39: TMenuItem
        Caption = '-'
      end
      object S3: TMenuItem
        Caption = 'System'
        object S1: TMenuItem
          Caption = 'Systeminfo'
          ShortCut = 16469
          OnClick = S1Click
        end
        object N21: TMenuItem
          Caption = '-'
        end
        object R4: TMenuItem
          Caption = 'Route'
          OnClick = R4Click
        end
        object R2: TMenuItem
          Caption = 'Route Statistic'
          ShortCut = 16466
          OnClick = R2Click
        end
        object M1: TMenuItem
          Caption = 'MAC Address'
          ShortCut = 16461
          OnClick = M1Click
        end
        object W1: TMenuItem
          Caption = 'WhoAmi'
          ShortCut = 16471
          OnClick = W1Click
        end
        object N23: TMenuItem
          Caption = '-'
        end
        object I7: TMenuItem
          Caption = 'Installed Programs'
          OnClick = I7Click
        end
        object I8: TMenuItem
          Caption = 'Installed Drivers'
          OnClick = I8Click
        end
        object I9: TMenuItem
          Caption = 'Installed Drivers Output List'
          OnClick = I9Click
        end
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object Font1: TMenuItem
        Caption = 'Font'
        ShortCut = 16454
        OnClick = Font1Click
      end
      object Background1: TMenuItem
        Caption = 'Background'
        OnClick = Background1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object F1: TMenuItem
        AutoCheck = True
        Caption = 'Filter Bar'
        ShortCut = 70
        OnClick = F1Click
      end
      object StatusBar2: TMenuItem
        AutoCheck = True
        Caption = 'Status Bar'
        ShortCut = 83
        OnClick = StatusBar2Click
      end
      object oolBar1: TMenuItem
        AutoCheck = True
        Caption = 'Tool Bar'
        ShortCut = 84
        OnClick = oolBar1Click
      end
      object N35: TMenuItem
        Caption = '-'
      end
      object S5: TMenuItem
        AutoCheck = True
        Caption = 'Stay Top'
        OnClick = S5Click
      end
      object H2: TMenuItem
        AutoCheck = True
        Caption = 'Hide on Task'
        OnClick = H2Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Textdocument (*.TXT)|*.txt'
    Left = 88
    Top = 112
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 120
    Top = 112
  end
  object ColorDialog1: TColorDialog
    Left = 152
    Top = 112
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    Left = 32
    Top = 64
  end
  object IdIcmpClient1: TIdIcmpClient
    OnReply = IdIcmpClient1Reply
    Left = 184
    Top = 112
  end
  object FindDialog1: TFindDialog
    FindText = '0.0.0.0'
    OnFind = FindDialog1Find
    Left = 216
    Top = 112
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 96
    Top = 64
  end
  object ImageList1: TImageList
    Left = 249
    Top = 113
    Bitmap = {
      494C010127002C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000B0000000010020000000000000B0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFFEFEFEFF000000FF000000FFC7C7CFFFECECECFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFFEFEFEFFF3F3F3FFEAEAEAFFEEEEEEFFFAFAFAFF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFFFFF
      FFFFF8F8F8FFCDCDCFFF7172CDFF4344E4FF3C3DE9FFDADAD1FFD7D7D7FF0000
      00FFFEFEFEFFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFBFB
      FBFF5858BBFF0C0CB8FF1212C4FF1818CAFF1D1DCFFF1E1ECDFF3C3CBFFFE8E8
      E8FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFFFFFFFFFD2D2
      D2FFE8E8E8FFE6E6E3FF4C4DE3FF4243E3FF3E3FE3FFD8D8E3FFE5E5E6FFDCDC
      DCFFFCFCFCFFFEFEFEFFFFFFFFFF000000FF000000FF000000FFD9D9E9FF0707
      B6FF0A0ABCFF0E0EC0FF1313C6FF1919CCFF2020D3FF2727DBFF2F2FE4FF3030
      E4FF9595CAFF000000FF000000FF000000FF4A89D2FF0068D5FF006DDBFF0072
      E1FF0077E6FF007BEBFF007EEFFF0081F2FF0080F2FF007EEFFF007AEBFF0076
      E6FF0072E0FF006DDAFF0061D0FF2164CBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFD6D6D6FFE5E5
      E5FFE4E4E4FFE7E7E4FF4C4DE3FF4243E3FF3E3FE3FFD9D9E4FFE3E3E4FFE3E3
      E3FFE4E4E4FF000000FFFFFFFFFF000000FF000000FFE7E7F1FF0404B5FF0707
      B8FF0A0ABCFF3838C6FFB0B0E0FFDEDEF1FFBEBEE6FF5E5ED5FF2F2FE1FF3838
      EFFF3D3DF4FF9999CAFF000000FF000000FF0089F2FF0097F9FF009FFAFF00A6
      FBFF00ADFCFF00B3FDFF00B8FDFF00BBFEFF00BAFEFF00B7FDFF00B2FDFF00AC
      FCFF00A5FBFF009EFAFF0085ECFF4B7CBEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFEEEEEEFFE7E7E7FFE4E4
      E4FFE4E4E4FFE7E7E4FF4C4DE3FF4243E3FF3E3FE3FFD9D9E4FFE3E3E4FFE4E4
      E4FFE3E3E3FFDCDCDCFF000000FFFFFFFFFF000000FF1D1DBBFF0404B5FF0707
      B8FFB3B3DDFF000000FF000000FF000000FF000000FFE3E3EDFF2D2DE2FF3333
      E9FF3838EEFF2E2EE1FFEDEDEDFF000000FFE9F4FDFF009DFEFF00A5FFFF00AD
      FFFF00B4FFFF00B9FFFF00BEFFFFFFFFFFFFA1E0FFFF00BDFFFF00B9FFFF00B3
      FFFF00ACFFFF00A2FDFF007DE7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFDFDFDFFFE4E4E4FFE4E4
      E4FFE4E4E4FFE7E7E4FF4C4DE3FF4243E3FF3E3FE3FFD9D9E4FFE3E3E4FFE4E4
      E4FFE4E4E4FFE6E6E6FFF3F3F3FFFEFEFEFFB9B9E3FF0202B2FF0404B4FF8B8B
      CEFF000000FF000000FF000000FF000000FFE5E5EFFF2222D5FF2727DCFF2C2C
      E0FF2E2EE1FF2E2EE3FF4D4DC0FF000000FF000000000195FAFF00A1FFFF00A8
      FFFF00AFFFFF00B4FFFF00B7FFFFEBF1F5FF21B9FEFF00B7FFFF00B3FFFF00AE
      FFFF00A8FFFF0093F5FFB7C4D7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE5E5E5FFE4E4E4FFE4E4
      E4FFE4E4E4FFE6E6E3FF4C4DE4FF4243E3FF3E3FE3FFDADAE6FFE3E3E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE6E6E6FFFEFEFEFF5B5BCAFF0202B2FF0303B3FFFEFE
      FEFF000000FF000000FF000000FFE5E5EFFF1818CBFF1D1DD0FF2121D5FFF4F4
      F5FF5454D4FF2626DBFF1C1CC8FFFCFCFCFF000000000000000029ACFEFF00A3
      FFFF00A9FFFF00ADFFFF00B0FFFFEEF7FEFF02ADFFFF00B0FFFF00ADFFFF00A8
      FFFF009EFCFF0175E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFFE4E4E4FFE4E4E4FFE4E4
      E4FFE3E3E3FFDFDFD1FF3F40E3FF4142E3FF4243E3FF8D8EC4FFE5E5E8FFE4E4
      E4FFE4E4E4FFE4E4E4FFE5E5E5FF000000FF5454CBFF3939C3FF3232B7FF0000
      00FF000000FF000000FFE6E6F0FF1111C3FF1414C7FF1818CAFFF4F4F5FF0000
      00FFB0B0E2FF1F1FD3FF1B1BCCFFF4F4F4FF000000000000000058B5FAFF39B3
      FFFF39B7FFFF0EABFFFF00A9FFFFFFFFFFFF65BFFFFF00A8FFFF00A6FFFF00A1
      FEFF0089F0FFF4F4F4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFE4E4E4FFE4E4E4FFE3E3
      E4FFDADACDFF3B3CE5FF4243E3FF4142E3FF4142E3FF4142E4FF8484C6FFE6E6
      E8FFE4E4E4FFE4E4E4FFE6E6E6FF000000FF4D4DC8FF3C3CC4FF6767C3FF0000
      00FF000000FFE8E8F0FF0A0ABCFF0D0DBFFF1111C2FFF3F3F5FF000000FF0000
      00FFC6C6E6FF1919CBFF1717C8FFF1F1F1FF00000000000000000000000048B3
      FDFF48B7FFFF48B9FFFF48BCFFFFFFFFFFFFB4E3FFFF2FB2FFFF16A6FFFF0696
      FAFF126AC9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE4E4E4FFE3E3E4FFD5D4
      C9FF393AE6FF4243E3FF4142E3FF3F40E3FF4344E3FF4142E3FF4243E3FF7878
      C9FFE6E6E7FFE4E4E4FFEBEBEBFFFEFEFEFF5959CDFF3E3EC5FF3F3FBEFF0000
      00FFE8E8F0FF0909B7FF0808B9FF0B0BBCFFF3F3F5FF000000FF000000FF0000
      00FF9C9CDCFF1313C5FF1111C1FFF8F8F8FF000000000000000000000000B1D9
      FBFF57B8FEFF57BAFFFF58BCFFFFFFFFFFFFE9F6FFFF57BBFFFF57B9FDFF57A8
      EFFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE4E4E6FFCECEC6FF393A
      E7FF4142E3FF4142E3FF3B3CE3FFCACAE4FF4849E3FF4445E3FF4142E3FF4344
      E2FF6C6DCDFFE6E6E6FFF8F8F8FFFEFEFEFF7070D0FF4141C5FF3D3DC5FFE1E1
      E7FF3636C4FF3333C4FF3131C4FFF2F2F4FF000000FF000000FF000000FF0000
      00FF2D2DC6FF1515C2FF1616B7FF000000FF0000000000000000000000000000
      000067B8FDFF67BBFFFF61B8F9FFFFFFFFFFFFFFFFFF67BCFEFF67B6F9FF6E95
      C7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFEFFDCDCDBFF383AE8FF4142
      E3FF4142E3FF3839E3FFD2D2E4FFE1E1E4FFECECE4FF5354E3FF4445E3FF4142
      E3FF4344E2FF696AD2FF000000FFFFFFFFFFE0E0F2FF4444C7FF4040C6FF3C3C
      C4FF3939C4FF3535C3FFF0F0F4FF000000FF000000FF000000FF000000FFA3A3
      D9FF2E2EC6FF2E2EC6FF7A7AC5FF000000FF0000000000000000000000000000
      0000F5F9FDFF75BDFEFF72BBFAFFFFFFFFFFF8FCFEFF75BDFDFF75AEEBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF5354E4FF4142E3FF4142
      E3FF3637E3FFDCDCE4FFE1E1E4FFE4E4E4FFE4E4E4FFEAEAE4FF5F60E3FF4445
      E3FF4142E3FF4243E3FFF5F5FCFFFEFEFEFF000000FF6767CFFF4343C6FF4040
      C5FF3C3CC4FFE6E6E9FF000000FF000000FF000000FFFEFEFEFF8888CFFF3131
      C5FF3131C5FF2D2DC0FFFDFDFDFF000000FF0000000000000000000000000000
      0000000000007BBAFBFF83C1FFFF83C1FFFF83C1FFFF83BBF6FFCFD5E0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFEFF9394EFFF4344E3FF3D3E
      E3FFE3E3E4FFE2E2E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE8E8E4FF7374
      E4FF4243E3FF4142E3FF000000FFFFFFFFFF000000FF000000FF5C5CCDFF4343
      C6FF4040C6FF3D3DC5FF4444BEFF6969C3FF5151C1FF3535C3FF3535C4FF3434
      C4FF3434C4FFE4E4EEFF000000FF000000FF0000000000000000000000000000
      000000000000000000008FC4FEFF8FC4FFFF8FC3FCFF6D9EDCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFDFDFEFFF6F6FDFF0000
      00FFF5F5F6FFE8E8E8FFE5E5E5FFE4E4E4FFE5E5E5FFE6E6E6FFECECECFFFDFD
      FEFFF7F7FDFF000000FFFFFFFFFFFFFFFFFF000000FF000000FF000000FF6868
      D0FF4444C7FF4141C6FF3F3FC5FF3D3DC4FF3B3BC4FF3939C4FF3838C4FF4848
      C9FFECECF3FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000098C3F9FF9AC7FEFF9AC1F3FFF8F8F8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFFEFEFEFF0000
      00FFFEFEFEFF000000FF000000FFFDFDFDFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
      FEFFFEFEFEFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      00FFDADAF0FF6D6DD0FF5E5ECFFF5050C9FF5757CDFF5C5CCCFFB6B6E2FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000A2C6F8FF82A3D3FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF000000FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF000000FF000000FFFFFFFFFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFEFEFEFFF0F0F0FFCCCAC9FFB9B6B3FFBEBCBBFFDCDCDCFFFAFAFAFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFCFFFBFBFBFFFBFBFBFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFF4F7FDFF779EFDFF2669FEFF1565FCFF166EF8FF328AFDFFC0DBFCFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFF000000FFFEFEFEFFFEFE
      FEFFEDEDEDFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFF4F4
      F4FF000000FFFEFEFEFFFFFFFFFF000000FF000000FF000000FFFEFEFEFFDBD9
      D9FF87624DFF874C29FF894C29FF91532DFF9F6133FFAB6D39FF996A40FF928C
      88FFF4F4F4FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC1C0C0FF818181FF9B9399FFE3E9E5FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFB0BF
      FCFF2653FEFF6365ACFFEA7C16FFFD7C02FFF37702FFE97202FFCA752BFF4D8B
      D5FFF8FBFDFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFF000000FF4839D2FF2612
      DBFF2612DAFF2612DAFF2511D8FF2511D6FF2511D7FF2611D9FF2612DAFF2612
      DAFF2612DAFFDAD8EBFFFDFDFEFF000000FF000000FF000000FFC2B7B0FF8B4E
      2AFF8A4C29FF894C29FF8E502BFFA06033FFA86837FFB5743DFFC38344FFCD8D
      3CFF7F5C43FFE9E9E9FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF768A8CFF9FB6B7FF99ACADFF495C58FFAA4C8BFF4B3C46FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFB5BEFCFF2948
      FDFFCD7437FFFD7A01FFFB7901FFEA7303FFD36803FFDC6D04FFE57103FFEF75
      03FF94887CFFFCFDFDFFFEFEFEFFFEFEFEFFFCFCFEFFA49DE3FF2B19D9FF2715
      DAFF2715DAFF2614D8FF2513CFFF2010BFFF2514C8FF2614D5FF2715DAFF2715
      DAFF2715DAFF2715DAFF000000FFFFFFFFFF000000FFE0D8D4FF9B562DFF9D5A
      30FF9B582FFFB36735FFB16434FFB86937FFBA6B38FFB76838FFA55C31FFB071
      2CFFCC8C3BFF886246FFF8F8F8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5F6969FF9DB3B5FFE4FFFFFFB1CACBFF93AAAAFF8A3B6FFFA74F8AFFADB2
      AFFFFCFCFCFFFFFFFFFFFFFFFFFF000000FFFEFEFEFFF6F7FDFF2D41FEFFB869
      50FFFB7800FFFB7900FFE57103FFC26002FFCA6503FFD26A04FFDC6E04FFE872
      01FFF07502FFB5B5AAFFFEFEFEFFFEFEFEFF000000FF4F42DCFF2A18DBFF2917
      DBFF2917DBFF2716D5FF1A0BB5FF9B95F3FF5147C3FF2717CEFF2816DAFF2918
      DBFF2918DBFF2918DDFFFEFEFEFFFEFEFEFFFDFDFDFF955733FFAA6033FFB868
      37FFB76634FFB76634FFB76636FF94542FFF744C35FF8F5737FF9D5730FF9555
      2EFFA86A36FFC0803DFF91857EFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA4BEC0FFD9F6F8FFD3F1F2FF97AEB0FFBDD6D7FF77305FFF9A497FFF5D51
      59FFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF838FFAFF3E44E5FFFD78
      00FFFD7A01FFF99E4CFFF6EAE1FFECD1BAFFC86607FFCA6502FFD86F0AFFFAE7
      D8FFE97100FFEF7B0BFFFCFCFDFFFEFEFEFF000000FF4437DCFF2B1BDDFF2A1A
      DDFF2919DBFF281ACEFF8780DFFFD9D9FCFFD4D2FFFF1A0CB3FF2919D6FF2A1A
      DDFF2A1ADDFF2A1ADEFFF6F6F6FFFEFEFEFFCDB6A9FFAF6335FFB76637FFB766
      36FFB76637FFAC5F33FF28160DFF090706FF2C2C2CFF303030FF423731FF703E
      23FFAD6F3AFFC08132FFAC743EFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF899A9BFF9BB3B6FFD9F5F6FFA7C0C1FFC9E4E4FF86376BFFA04C84FF7C7A
      7BFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF3846FDFFA25F6AFFFD78
      00FFFD8111FFFEFCFCFFBA7939FFE0C0A4FFF0DAC5FFC46202FFEFD2B8FFEEC6
      A3FFDE6D02FFE57102FFF5E4D1FFFEFEFEFF000000FF4539DDFF2C1EDEFF2B1D
      DEFF2A1CD7FF2015B2FFDEDDFFFFE5E5FEFFE4E4FEFFA19BEEFF291BD3FF2B1C
      DDFF2C1DDFFF2C1DE0FFF6F6F6FFFEFEFEFF9B623FFFB46436FFB36436FFB062
      34FFB76637FF8C4C2AFF92502CFF884A29FF3F2214FF0F0C0AFF313131FF1F13
      0DFFB0743BFF94562BFFCD8D2BFFC1BEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFFABA9A9FFF2FFFFFF99B2B4FFBBD4D5FFCBE9E7FF953D77FF601F4BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF2C3AFEFFD66E2CFFFD79
      00FFFC9333FFEEE2D9FFA04E02FFB1631AFFF9F6F1FFD9A776FFFFFEFEFFD983
      31FFD56902FFDE6E03FFFAC792FFFEFEFEFF000000FF473BDEFF2E21E0FF2C1F
      DDFF2519C9FFB9B4F4FFEFEFFEFFF5F5FFFFF8F8FFFFEEEEFFFF3025CBFF2C1F
      DAFF2C1FE0FF2D20E1FFF6F6F6FFFEFEFEFF94542EFFAB6034FFA35B31FF8C4A
      1FFF9D5529FF5E3B27FF231B17FF613C25FF95663AFF221F1EFF373737FF3232
      32FF9C6925FF995C31FFA36531FF99897BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFFBCBABAFF9BB5B7FF95AAADFF937892FF4A273FFFFBFDFCFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF2A3BFEFFD46D2DFFFC79
      00FFFC9535FFECE1D8FF964B00FFE17C18FFFAF5F2FFBD6917FFD19257FFFDF9
      F7FFD06702FFFD7902FFFCC792FFFEFEFEFF000000FF483EE0FF2F23E1FF2D22
      D8FF3C34BDFFF2F2FFFFFCFCFFFF3227DEFF2518E0FF372CDCFFD6D3FEFF2419
      CBFF2D22DEFF2F23E3FFF6F6F6FFFEFEFEFF975830FF99562FFF94522DFF7139
      11FF6E3813FF171717FF1A1A1AFF1A1A1AFF1A1A1AFF343434FF353535FF2E2E
      2EFF69492CFF96592FFFB3743CFF91775DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFCFCFFFFFFFFFF91B1AFFF5A4352FFFFFFFFFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF2F3FFDFF9C5E6BFFFC79
      00FFFB9335FFECE0D7FFDF6E02FFFC8415FFFDFBFBFFEACFBBFFEFDACBFFFCEF
      E4FFFB7900FFFD7A01FFFCE5CFFFFEFEFEFF000000FF4940E1FF3026E2FF2118
      CAFFE1DEFFFFFDFDFEFFA19CF0FF3329E4FF3025E4FF291FD9FFE0DDFCFF534C
      CCFF3026DEFF3026E5FFF6F6F6FFFEFEFEFF9B6034FF8B4F2BFF854928FF854A
      28FF844926FF9F5E31FF1E1E1EFF202020FF2C2C2CFF3C3C3CFF424242FF4646
      46FF151515FFAA6C38FFC0802EFF997F6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF78C1B9FFE1E9E8FFFDFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF5A66FAFF3745EBFFFD79
      00FFFE7C05FFFB9030FFFE7901FFFD7E09FFFDA95DFFFDA95DFFFDA556FFFE7D
      07FFFC7900FFFC7C06FFFEFEFDFFFEFEFEFF000000FF4A42E3FF342BE4FF6B64
      E5FFFBFBFEFFFFFFFFFF2219E0FF3128E5FF3128E5FF251CDCFFF5F4FFFFEAE7
      FFFF261DDDFF3128E6FFF6F6F6FFFEFEFEFF9E663CFF8C512CFF844928FF854A
      28FF854A28FFB08050FF766949FF232323FF2D2D2DFF272727FF2E2E2EFF3C3C
      3CFF2F2F2FFF9B6128FFB57638FFC8C1BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFFFEFFE5FAF6FF00C8A3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFEFEFEFFDADCFCFF2A42FFFF8E5F
      79FFFE7A00FFFC7900FFFB7900FFFC7900FFFC7901FFFC7900FFFD7A01FFFB79
      01FFFC7900FFFCD2ADFFFEFEFEFFFEFEFEFF000000FF4E48E4FF352EE7FF534C
      E9FFFFFFFFFF645EEBFF352DE7FF332BE7FF332BE7FF2921E4FFF3F2FEFFE8E7
      FDFF2B24E5FF332BE8FFF8F8F8FFFEFEFEFFCDB4A4FF8E532CFF854A28FF854A
      28FF864A28FF924F24FFA15D35FF372F27FF2E2E2EFF2F2F2FFF2B2B2BFF3232
      32FF1C1B1BFF885330FFAA6C2FFFEAE9E9FF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79E4D2FF31D6BAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFFFF596EFBFF264B
      FFFF7B6290FFFA7902FFFB7900FFFB7900FFFB7900FFFD7D00FFB2844DFF4395
      D4FFF1BA85FFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFFFF736FE9FF3630E8FF3630
      E9FF261FE7FF3630E9FF342EE8FF342EE8FF342EE8FF342EE8FF2D27E8FF2F29
      E8FF342EE8FF342EE9FF000000FFFFFFFFFFF5EDE7FFAB6938FFA36839FF965B
      31FF874B29FF463225FF393939FF393939FF383838FF3D3D3DFF303030FF2828
      28FF684B32FFB6773EFFBF8D4EFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0F3EAFFF4FDFBFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF000000FFFEFEFEFFFEFEFEFFFCFCFEFF4163
      FCFF3F6EF9FF2562FAFF4F6ABAFF7D7189FF5978A9FF318EF0FFDBECFDFFE6F3
      FDFFC6E6FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFCFF3631EBFF3834
      EAFF3632EAFF3632EAFF3632EAFF3632EAFF3632EAFF3632EAFF3632EAFF3632
      EAFF3835EAFF615EEAFF000000FF000000FFFEFDFBFFC98848FF59524BFF5B55
      4EFF5D4B40FF9E6135FF424140FF484848FF464646FF424242FF4B3E32FFA873
      36FFC48434FFCBA37DFFF5EFE7FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FFFEFEFEFFFEFEFEFFFEFEFEFFFDFD
      FEFF8AA5FCFF2061FEFF5990FCFF8EB9FCFFA3CAFDFF6BB2FDFF2C99FDFFB4DC
      FDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFF9F9FDFF7573
      EFFF5553ECFF5350ECFF5350ECFF5350ECFF5350ECFF5350ECFF5350ECFF5E5B
      EDFFB4B3F3FF000000FF000000FF000000FF000000FFE9D9C6FFF3F3F3FF6565
      65FF6E6E6EFF888888FF868686FF696969FF5E5E5EFF5B5955FF6E5738FF996F
      44FFDCCFC0FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFDFFFFFDFCFEFFD9E5FDFFACCCFDFFB2D3FCFFE5F1FDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF000000FFFFFFFFFFFEFEFEFFFCFC
      FEFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFEFE
      FFFFFBFBFEFF000000FF000000FF000000FF000000FF000000FF000000FFFEFE
      FEFFBABABAFF888888FFAFAFAFFFCDCDCDFFCCCCCCFFBBBBBBFF8D8D8DFFF4F4
      F4FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFDFDFDFFF4F4F4FFECECECFFE5E5E5FFE8E8E8FFF0F0F0FFF9F9F9FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFDFCFCFF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFEFDFDFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFF3F3
      F3FFABABABFF767674FF998448FFB1933CFFA98D3EFF84795BFF8A8A8AFFD4D4
      D4FFFEFEFEFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFB0B0D1FF141490FF05059EFF00009FFF0C0CA9FF9191CCFFFEFE
      FEFF000000FF000000FF000000FF000000FF000000FFFFFFFFFF000000FFFEFE
      FEFFDCCEC6FFA2633CFFB7774DFFCD8F66FFD4976FFFCC8E66FFD0A184FF0000
      00FFFDFDFCFFFFFFFFFF000000FF000000FF000000FFE1E1E1FF696969FF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF9F9F9FFFFDFDFDFF000000FF000000FF000000FF000000FFD7D7
      D6FFCA9810FFDCB341FFE8CD82FFE9CF84FFE8CE83FFE4C56FFFD3A013FFAE96
      58FFF9F9F9FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0B0BC4FF0F0FE6FF0C0CEDFF0909F0FF1313EFFF3131ECFF3838D4FF0101
      A7FFF6F6F6FF000000FF000000FF000000FF000000FF000000FF000000FF6743
      2CFF824D2BFFBB7A52FFD3956DFFE4A882FFE6AA84FFE4A880FFDDA079FFC483
      5AFFE0CBBEFFFDFCFBFFFFFFFFFF000000FF000000FF8C7157FFBB8A5BFFA16E
      3CFFB88553FFB78451FFB78451FFB78451FFB78451FFB78451FFB78452FFB886
      54FFBA8959FFBC8B5CFFD2D2D2FF000000FF000000FF000000FFFBF9F3FFCD95
      04FFD8AC34FFDBB03DFFDCB342FFDCB444FFDCB443FFDBB13FFFDAAF3AFFD09A
      0AFFD4A93CFF000000FF000000FF000000FF000000FF000000FF000000FF0303
      C5FF0000D1FF0202DBFF0F0FDBFFC5C5F5FF1111E3FF0000DDFF0909D6FF4747
      DBFF04049BFF000000FF000000FF000000FF000000FF000000FF5D3820FF643D
      24FFAC7857FFCB8E68FFE4A982FFF3B994FFF0B690FFF0B58FFFEBAF88FFE8AB
      84FFCA8B63FFE2CDC0FFFEFDFCFFFFFFFFFF000000FFC09165FFB88654FF9C67
      32FFAA7745FFBA8048FFBD8248FFBF8348FFBE8348FFBC8248FFB98049FFB680
      4CFFB68452FFBB8B5DFFA1A1A0FF000000FF000000FF000000FFC18905FFC891
      04FFD19E15FFD3A21AFFD5A41FFFD5A521FFD5A520FFD4A31CFFD3A017FFCE9A
      13FFC48C05FFE2CA93FF000000FF000000FF000000FF000000FF4A4AC5FF0000
      BDFF0000C7FF1717D4FFE1E1E9FF000000FF000000FF0000D1FF0000CAFF0A0A
      C4FF2B2BB7FFA6A6C9FF000000FF000000FFFDFDFDFF917767FF603D26FF7851
      38FFA76D49FFD49770FFEAB08AFFF4BB95FFF5BB96FFF3B993FFEFB48DFFECB0
      8AFFEBAF88FFC28158FF000000FFFFFFFFFF000000FFBF9063FFB4814FFF8F5B
      2BFF6D4335FFC98543FFCD8742FFD08842FFCF8842FFCC8642FFC68443FFC082
      46FFA06933FFA06C3AFFA1A1A0FF000000FF000000FFD8BB7EFFBC8405FFC48E
      0CFFFFFFFFFFFDFCF8FFD29F15FFFFFFFFFFFEFDFAFFD29F16FFFFFFFFFFFFFF
      FFFFBF8705FFB87F06FF000000FF000000FF000000FF000000FF0000A9FF0000
      B3FF0101BCFF1C1CB5FF000000FF000000FF000000FF1010C6FF0000BDFF0000
      B5FF2C2CC1FF0B0B87FF000000FF000000FF000000FF5C3820FF5E3921FF734A
      30FFAF724CFFBE7F56FFD3936AFFEDB18AFFF5BB96FFF1B791FFF4BA95FFEAAE
      87FFE5A780FFCD8F66FFC3967AFFFEFDFCFF000000FFC09061FFB9824CFFA666
      29FF643B40FF301B60FFE29242FFE5984CFFE49548FFE18F40FFD98C40FFD089
      43FFA5682CFFA46D37FFA1A1A0FF000000FF000000FFB17707FFB77E06FFC18C
      15FFFFFFFFFFFDFCF9FFD1A32EFFFFFFFFFFFEFDFAFFD0A230FFFFFFFFFFFFFF
      FFFFBA8107FFB37A06FFEDE0C9FF000000FF000000FFB3B3DEFF00009FFF0000
      A8FF0606B2FF0E0E95FF000000FF000000FF000000FF6060CFFF0000B1FF0707
      ACFF2323B2FF030384FF000000FF000000FFCCC1B9FF5D3820FF623519FF8051
      33FFBC805AFFC2845DFFD4956CFFE8AC84FFF0B590FFF3BA9BFFF6C2A9FFDB9C
      74FFDC9C75FFC5855CFFAF6C42FF000000FF000000FFC49261FFAB6D31FFB06B
      28FFB46B23FF251583FF090688FFA57443FFA97746FFEFAC69FFE89544FFE292
      41FFAF6C2CFFAA6F36FFA1A1A0FF000000FF000000FFAB7107FFB7821AFFC495
      34FFFFFFFFFFFDFCF9FFCEA23CFFFFFFFFFFFDFDFAFFCDA23DFFFFFFFFFFFFFF
      FFFFBF8F2FFFAD7407FFCCAA6EFF000000FF000000FF4A4AADFF000096FF0606
      9FFF1A1AAEFF040486FF000000FF000000FF000000FF9C9CDDFF3E3EBAFF3E3E
      B6FF4242B4FF27279EFFFDFDFDFF000000FF968071FF5E3216FF5F3114FF8C5A
      3AFFAF744FFFC8875EFFDB9E77FFE4AA87FFF1CEBBFFF7DDCFFFEED3C2FFE4C1
      A8FFD9A682FFBF754CFFB6744AFF000000FF000000FFB4804DFFB37130FFB76F
      28FFB9712AFFD09963FF0201A9FF7C7BADFF9F6933FFAA7745FFF3A252FFE294
      47FFB6702BFFB17235FFA1A1A0FF000000FF000000FFA56A08FFBF9343FFC49A
      48FFFFFFFFFFFDFCFAFFCCA34DFFDBBF82FFDBBE80FFCDA551FFFFFFFFFFFFFF
      FFFFC09543FFAE781AFFC29C5EFF000000FF000000FF5252AEFF4B4BAEFF4B4B
      B2FF5353BBFF010187FF000000FF000000FF000000FFA2A2DBFF4B4BB6FF4B4B
      B3FF4D4DB1FF3737A6FFFCFCFCFF000000FF8C7260FF5D3217FF623315FF9060
      42FFB87D57FFC5875FFFD99E78FFE3BEA4FFF0DDD0FFF4E7DEFFEBD0BDFFECD3
      C2FFD7A17CFFC77A44FFB76F43FF000000FF000000FFD4995EFFB9732FFFBB73
      2BFFDD8F42FFE3AB70FF995D22FF979696FFBBB9B6FFA77441FFEDA35BFFCC82
      39FFBB732DFFB97534FFA1A1A0FF000000FF000000FF9E6309FFC29B5BFFC7A1
      60FFFFFFFFFFFEFEFEFFF7F2E8FFF8F2E8FFF7F2E8FFF8F3E9FFFFFFFFFFFFFF
      FFFFC39D5BFFAF7D2FFFD3B992FF000000FF000000FF5858AEFF5757AFFF5757
      B1FF5D5DB9FF030391FF000000FF000000FF000000FFA2A2D8FF5757B4FF5757
      B2FF5959B1FF3636A3FF000000FF000000FFAD988AFF5F3216FF734426FF9967
      48FFC28964FFC4865FFFCC895EFFE6C5AEFFF1DED1FFEDD4C4FFE1BA9EFFDFB3
      94FFDEB192FFDFB496FFB57143FF000000FF000000FFE4A15EFFE4984DFFF6A4
      52FFFFAE58FFFFC379FFB17B45FF9E5F22FFE8E6DAFFAAA8A0FFCD7F33FFC578
      2DFFC0762EFFBC7835FFA1A1A0FF000000FF000000FFA26C22FFC8A675FFCBAB
      79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC9A875FFA16A1BFFFDFDFDFF000000FF000000FF7C7CBEFF6363B1FF6363
      B2FF6767B8FF1212A0FF000000FF000000FF000000FF9F9FD1FF6363B4FF6363
      B3FF6666B4FF1F1F93FF000000FF000000FFF0ECEAFF5E3115FF693C20FF975F
      3CFFC0845EFFCC8A62FFD49970FFDFB395FFEED8C8FFF2E2D6FFEBD0BDFFE6C4
      ACFFF5E7DEFFD49A72FFCF956DFF000000FF000000FFDB9D5FFFE89B50FFFFAC
      57FFFFB860FFFFC371FFFFD694FFE7C691FFF7D29EFFD1C1AEFFA48C73FFCD7E
      30FFC67A30FFC07A35FFA1A1A0FF000000FF000000FFF5F1EAFFAB7C3FFFD2B8
      93FFDDC8ABFFDECAACFFDECBACFFDFCBADFFDFCBACFFDECAACFFDDC9ABFFDCC8
      ABFFD1B693FF996018FF000000FF000000FF000000FFBBBBDDFF6F6FB7FF6F6F
      B7FF7171B9FF3B3BB3FFF5F5F5FF000000FF000000FF8989C4FF6F6FB7FF6F6F
      B7FF7575BDFF4A4A9EFF000000FF000000FF000000FF603418FF6B3B1CFF8C51
      2CFF9F5D33FFBC7243FFD59B74FFF2E1D6FFEACDBAFFF2E2D6FFF4E6DCFFFBF7
      F4FFF9F1ECFFDEB192FFF5EAE2FFFEFEFDFF000000FFD69759FFFAA856FFFFB3
      5CFFFFC169FFFFCE7DFFFFDB93FFFFFAE2FFFFE19CFFE3A05AFFBB8C5EFFB37C
      46FFCB823AFFBE7B39FFA1A1A0FF000000FF000000FF000000FFAF8554FFD3BB
      9EFFDDCAB2FFDECBB2FFDECBB2FFDECCB2FFDECBB2FFDECBB2FFDDCAB2FFDCC9
      B2FF975F1DFFFEFEFEFF000000FF000000FF000000FF000000FF7A7ABDFF7A7A
      BDFF7A7ABDFF7D7DCCFF7C7CC2FF000000FF000000FF7B7BBEFF7A7ABDFF7A7A
      BDFF8484C6FFFAFAFAFF000000FF000000FFFEFEFEFFECE6E3FF6E3C1DFF7D40
      1AFF9A5428FFB86D3AFFD69F79FFF0DCCEFFEFD9CAFFF4E6DCFFFAF3EFFFFDFA
      F8FFFDFBFAFFE9CDBAFF000000FFFFFFFFFF000000FFC68647FFECA258FFFFB9
      62FFFFC86FFFFFD785FFFFE499FFFFF0ADFFFFEAA2FFFCD78CFFF6BD70FFDFA2
      59FFFEB462FFE49C56FFA1A1A0FF000000FF000000FF000000FF000000FFAC82
      54FFC3A481FFEAE0D4FFEBE0D4FFEBE0D4FFEBE0D4FFEAE0D4FFE9DED1FF8F54
      16FFF8F5F3FF000000FF000000FF000000FF000000FF000000FF9393C9FF8484
      C1FF8484C1FF9090CEFF00009FFFECECECFFFAFAFAFF8484C1FF8484C1FF8585
      C3FF8D8DC3FF000000FF000000FF000000FFFFFFFFFFFCFBFBFFCCBAAEFF8550
      2DFF944D22FFA76030FFD69D77FFEBCFBDFFFAF4F0FFFAF4F0FFFCF8F6FFFDFA
      F9FFF0DDD0FF000000FF000000FF000000FF000000FFCB9158FFD7924EFFE198
      4EFFFFCB74FFFFDD88FFFFEA9AFFFFF2A4FFFFF0A2FFFFE694FFF5B567FFE79B
      4FFFD48940FFD48F4AFFB5B5B5FF000000FF000000FF000000FF000000FF0000
      00FFF4EFEAFF915A24FF97632FFFB28B65FFA97E53FF86490DFFBF9F80FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF8C8C
      C6FF8D8DC6FF8E8EC7FF9C9CD6FF3B3BAFFF8C8CC6FF8D8DC6FF8D8DC6FFA5A5
      CFFF000000FF000000FF000000FF000000FF000000FF000000FFFCFCFBFFF1EB
      E7FF975A33FFB06B41FFD49C76FFE3BDA3FFEBD0BEFFEED8C8FFFAF4F0FFF1E2
      D7FF000000FF000000FFFFFFFFFF000000FF000000FFD4D1CEFFCA8C50FFDB96
      53FFEBA159FFFFE18EFFFFEF9EFFFFF6A7FFFFF4A4FFFFE897FFF6BB73FFE9AA
      65FFDD9C59FFA17952FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC4C4E0FF9191C8FF9494C9FF9494CAFF9494CAFF9191C7FFEDEDF4FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFEFD
      FDFFFFFFFFFFF6F1EEFFE2BFA8FFE8CCB9FFE6C7B2FFF3E5DCFF000000FFFEFE
      FEFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFDFCFCFF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFDFCFCFF0000
      00FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFCFBFEFF000000FFFFFFFFFFFEFEFEFF000000FFFFFFFFFFFDFDFEFFFEFE
      FEFFFFFFFFFF000000FF000000FF000000FF000000FFD4E1E9FFB3CDDDFFEEEE
      EEFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFFDFDFDFFEBE9E7FFD3D1D0FFE1E0DFFFF7F7F7FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF000000FFFEFE
      FEFFD9CAC3FF73310EFF753107FF7C4519FF945220FF9D4710FFB18467FF0000
      00FFFDFCFCFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFEFEFEFF0000
      00FFC295F3FF6E0CE4FF680DE0FF640EDFFF6410E2FF6711E7FF8641EEFFFCFB
      FEFFFDFCFEFF000000FF000000FF000000FFDBEBF5FF2EA3EEFF000000FFFDFD
      FDFF87B9DAFFCED8E0FF000000FFFBFBFBFFF9F9F9FFFEFEFEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFF4F4
      F4FF988E88FF775D4BFF6E5F56FF77706DFF91867FFF9E897BFF96857AFFD9D7
      D7FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF6D29
      0FFF77391CFF976E5CFF966B59FFAE8673FF925730FFA15119FFAC561AFF9D4C
      16FFDCCAC1FFFDFDFCFFFFFFFFFF000000FFFFFFFFFFFEFEFEFF000000FF6E0C
      E4FF6315DEFF6024EDFF5F2AF5FF5C2CF7FF592EF8FF552DF7FF5625EBFF5D1B
      E9FFBDA3F8FFFCFBFEFF000000FF000000FF86C5F1FFEFEFEFFF000000FF0000
      00FFE5D5C2FFE1B31EFFF9E934FFFBF241FFFAF14CFFF3DE51FFDB9D3FFFE3DA
      D3FF000000FF000000FF000000FF000000FF000000FF000000FFDCD6D3FF7F64
      52FF726F6EFF6F6F71FF756E6AFF866D5CFF8F6C55FF8A6E5DFF847B78FF8F87
      83FFA69486FFFEFEFEFF000000FF000000FF000000FF000000FF7A4732FFE9EC
      ECFFF7FFFCFFE3E2E4FFDBCDDCFFFBFFFFFF732E0CFF8E5B30FFA35A22FFA754
      19FF893604FFF8FDFFFFFEFEFEFFFFFFFFFF000000FF000000FF6C0BE1FF5D27
      F1FF582DF7FF532FF9FF4F31FBFF4B33FDFF4835FEFF4637FFFF4538FFFF443F
      FFFF563DECFFB9B5FAFFFDFCFEFFFFFFFFFF8CC8F1FFC9D6DFFF000000FFDEAA
      30FFF2D609FFF7E61DFFF8E922FFF8E91DFFF8E823FFFAE83CFFFCE654FFF3DB
      5DFFD4A06CFF000000FF000000FF000000FF000000FFDFDFDFFF716D6CFF8F6B
      55FF9A7259FFA07D68FF988E88FF8C8B8CFF868586FF857C78FF9E7F6CFFA683
      6CFF84746DFFA29E9DFF000000FF000000FFFEFEFEFFDAD6D4FFF5FFF7FFC28E
      C1FFAF13ACFFC51FC3FFC124C3FF8B078AFFF1F9F2FF844418FF9C5B25FF9A63
      2FFF873E0DFFEDF3F2FF000000FFFFFFFFFF000000FF8025E5FF5531F9FF4F31
      FBFF4934FEFF4639FDFF393FFFFF3D47FFFF324FFFFF3D46FEFF3B4FFFFF3C60
      FFFF3D71FFFF5165F4FFFEFFFEFFFEFEFEFFC6E2F6FF5BA3D2FFDDA52AFFE9B9
      00FFEFD10BFFF1D40AFFEFC200FFEDB100FFEBA900FFEBB200FFEFCE12FFFADA
      45FFF5D454FFD3AA83FF000000FF000000FFFEFEFEFF8F7769FF888686FF8B89
      89FF8D7F76FFAC8268FFB78F73FFBC957AFFAE9A8EFF918E8FFF828183FF8885
      85FF9C7F6FFF8C6C57FFCDCBCBFF000000FF000000FFE5E4E5FFA813A5FFC827
      C7FFC624C5FFBD23BEFFBA22BBFFAF1EACFFDACDDFFF7B2A00FFA74F14FFA359
      20FF893D0CFFF8FBF4FF667ED5FFFCFDFEFFF8F3FDFF542BF6FF4735FEFF423C
      FFFF4041FDFF614EC2FFB8384CFFB83C53FFBC3753FF90428CFF238BFFFF367F
      FFFF3A8BFFFF4190FBFF76A9FCFFFEFEFEFF000000FF3BAAF3FFDC9F00FFE6B3
      00FFEDCC0FFFEDC907FFE6BD57FF000000FFFCFBFBFFE09403FFE09C00FFE5B3
      02FFF2C82EFFDCAD3AFFFAFAFAFF000000FFC8C2BFFFA87A5FFFA38777FF9898
      98FF9A9A9AFF9E9E9EFFA49790FFBF987FFFC0977CFFB48C72FF998173FF7A78
      7BFF767677FF786D69FF836553FF000000FFD1B6CFFFB619B3FFC324C4FFBF23
      C1FFB91FB6FFA1119BFF9B1C97FF92118DFFC2A2C2FF803F16FFA6551BFF9E5C
      25FF813A0BFFF8FDF9FF0F3BC9FF000000FFAD75F0FF4341FFFF3E44FFFF3A4C
      FEFF3A71E9FFB83B58FFC95557FFD35C5BFFD55367FFCA4279FF696DC0FF27AC
      FEFF4497FBFF3AB1FFFF49AAFBFF000000FF000000FF77BBE7FF8C843CFFE3AF
      01FFEDC81BFFEBC92AFF000000FF000000FF000000FFF5E7D1FFDDA22DFFDDA6
      2AFFE2B62FFFE7BE46FFEEE2D8FF000000FF9B9999FFAA8166FFB38468FFB488
      6EFFA99F98FFA7A7A7FFA6A6A6FFA5A5A5FF9F948EFFA6816AFFA37A63FF9E76
      5EFF7F6C62FF616061FF5E5957FFF9F8F7FFA45AA1FFBA22B9FFBB24C0FFB31D
      B2FFB75AB3FFA1559CFFA76AA0FF923988FFF7FEFCFF864E1DFF9F5E28FF965B
      29FF742D02FFFFFFFFFF0237D0FF000000FF664BF7FF3C4AFFFF3653FFFF3455
      FDFF905390FFCD506DFFE36069FFEC646EFFEF5B7AFFE84989FFC9378EFF26C8
      FFFF6089F6FF38C7FFFF45C3FCFF000000FF000000FFC0831BFF3DAAF2FFE1B4
      2CFFF0CD4DFFE4C053FFC28B37FFC78F3BFFCA8F3BFFCD8F3BFFCE9240FFD096
      47FFD39C50FFD39D55FFCFA988FF000000FF9D9896FFA7A6A6FFAE8C76FFC797
      77FFCB9C7DFFC69C82FFAEA7A2FFA3A3A4FF989798FF8D8C8DFF847873FF936E
      57FF86654FFF755949FF514E4FFFD3D3D3FF9D4997FFB822B7FFC022BFFFB449
      B1FF7F2D7DFFDDECFCFF3568E9FF4C79E5FF642100FF893D0EFF9B4914FF9244
      15FF702B0CFFFFFFFCFF013DDAFF000000FF4D5BFEFF3357FFFF2E5EFFFF2775
      FFFF19BFFFFFC16097FFFD557FFFFC5A89FFFC5593FFEF4B99FFCE419EFF31D7
      FFFF53A2FCFF4DBCFDFF44D7FDFF000000FF000000FFD39840FF81C0E8FF4A8E
      A5FFECC64FFFF0CC59FFEFCB55FFEAC54AFFE6BC42FFE5BA41FFE8C149FFECC4
      53FFF5CB66FFF8CB6BFFD3AA7FFF000000FFAB856DFFAFAFAFFFBCBCBCFFC2B8
      B1FFDDAE90FFDDAF90FFD0A284FFBD957CFF9A938FFF89888AFF807D7FFF7371
      71FF6E5D53FF765643FF705341FFBEBDBDFFB073ABFFAF21AEFFB322B4FF7E07
      7AFFC8DAF6FF1C67F7FF256BFCFF265BE7FFB29C8BFFAC7F6BFFBB9580FF9E6B
      52FFD2C8C4FF6284E2FF1147DCFF000000FF6C89FFFF2D65FFFF1CA1FFFF21B3
      FFFF28BEFFFF2AB8FEFF24C1FEFF73A9DEFFF24BA6FFED44A9FF69AFE5FF43CE
      FEFF4BBCFFFF4DCAFFFF47DEFDFF000000FF000000FFD1994DFFD8A34CFF75C5
      FBFFB0A462FFDCAF47FFEAD19BFFE7CC9BFFE5C89BFFE1C493FFE0B14DFFE7BC
      55FFF2C669FFF2C56AFFE2D1C0FF000000FFAC876FFFC2977BFFC9C7C6FFE4E4
      E4FFF8F8F8FFE5D2C9FFE9B89AFFCEA082FFB4886BFF9E7962FF817A78FF7270
      71FF636161FF544D49FF6A4E3DFFDDDBDAFFE8DCE7FF9E1E9BFFAD20ADFFBF87
      B4FF0438D4FF1E68F4FF246CFDFF256FFDFF4675EAFFF2F8FAFFD3BEA9FFEEE9
      DEFF6D91EAFF1859EDFF1846D3FF000000FFC8D8FFFF2572FFFF1F78FFFF1983
      FFFF1793FFFF0FB0FFFFBA5EC0FFF73CAEFFEA3FB7FFA283D4FF9978CAFF44C8
      FFFF4AD2FFFF4CD1FFFF4BE1FEFF000000FF000000FFD09F5EFFD4A058FFC9B1
      76FF55B7F7FFD3B269FFDED8D5FF000000FF000000FFE7D1B1FFDCAC58FFE0B2
      58FFE7BA62FFE0B464FF000000FF000000FFB9B8B8FFBF9174FFD7A787FFF6E1
      D2FFFEFDFDFFFEFEFEFFEBEBEBFFB9ABA2FFB1876CFFA5795FFF9B7158FF896B
      58FF61605FFF4B4B4BFF423935FFFDFDFDFF000000FF83117BFFA61FA2FFC093
      BFFF264CD0FF2E66E8FF2062F6FF246AFDFF276EFEFF1E67FCFF125DF6FF1767
      F9FF2066F5FF2A60E5FFC0CAEEFFFCFCFEFF000000FF1E7CFFFF1889FFFF179C
      FFFF20A7FEFFEACBEAFFDA39B1FFEB34B4FFF02FB0FFB55CC1FF39D8FFFF47D8
      FFFF48D7FFFF94E7FEFFC2F5FEFFFCFEFEFF000000FFF5F0E8FFD3A163FFD7A7
      63FFA8BBB4FF3DA8EFFFCEA767FFAC6E2CFFBA8541FFDFB263FFDFB263FFE0B3
      63FFE1B364FFCAA576FF000000FF000000FFF7F5F5FFB2AFAFFFC5A896FFFBC8
      A8FFFDE5C5FFFCF0E2FFEFEFEFFFC6C5C5FFA2A2A2FF8A7E79FF936E57FF8A65
      4FFF7B5B48FF514B47FF5D5D5DFF000000FFFDFDFDFFE1D1DFFFA53B9EFF8819
      82FFFFFFFFFF0736D0FF3C6AE7FF1959EFFF2267F9FF246CFDFF236EFCFF1E61
      F4FF396EE8FF1644CEFF000000FFFFFFFFFFFDFEFFFFE0EEFFFF179DFFFF0000
      00FF3EA0FFFF000000FFFBFEFFFF98EBFFFF2EDEFFFF40D6FEFF44DEFFFF44DD
      FFFF4DDCFFFF9CEEFDFF000000FFFFFFFFFF000000FF000000FFD8B68BFFD4A5
      6DFFD8AB6DFFB2B9A8FF3EA8EEFFDEB976FFE9BF75FFE1B66DFFDFB26DFFDEB1
      6DFFD3A96AFF000000FF000000FF000000FF000000FFC0A390FFBCB7B3FFCBC9
      C8FFE6C5B1FFFCC8A9FFEFBB9CFFC4A693FFA19D9BFF8B888AFF787677FF6860
      5CFF785945FF644C3AFFEFEEEEFF000000FFFFFFFFFFFDFCFDFFB88BB4FF9C2F
      93FFB68EB5FFFFFFFCFF1C43D0FF7E9AECFF164EE4FF185CEDFF1156E9FF5381
      E9FF0E3CCFFF000000FF000000FF000000FFFFFFFFFFFCFDFFFFCEEDFFFF0000
      00FF000000FFFEFEFFFFFEFEFFFFF7FDFFFF42E2FFFF42E2FFFF42E2FFFF42E1
      FFFF000000FFFDFEFEFF000000FF000000FF000000FF000000FF000000FFE1C7
      A9FFD4A976FFD6AA76FFC4B18FFF53B3F3FFAE9972FFDBB076FFDAAF76FFD3AF
      7FFF000000FF000000FFB4CBDAFF000000FF000000FFFCFCFCFFB59B8AFFC19E
      85FFC3BDB9FFC0C0C0FFB3A39AFFB1886FFFAC7F63FF9D775FFF7C706AFF6260
      60FF4A4847FFDED9D7FF000000FF000000FF000000FF000000FFFCFBFCFFE1D3
      E0FF791372FF9A5795FFFFFFFFFFBECAEDFF3055D5FF98ADF0FF7F97E9FF4763
      D5FF000000FFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFDFEFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFF000000FF62EDFFFF47E6FFFF45E5FFFFFEFE
      FFFFFEFEFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFE3CEB7FFD2AD83FFCCA272FF73BAE8FF4B82A0FFFBFBFBFF0000
      00FF000000FF000000FF9DC1D8FF000000FF000000FF000000FFFFFFFFFFBBB6
      B4FFAF998BFFB78F73FFB09685FF9C9694FF8C8A8CFF7D6E66FF82634EFF8365
      51FFDAD9D9FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFDFD
      FDFF000000FFEAE0E9FF9F6A99FFCFBBD0FFFCFBF3FFC9CEEAFF000000FFFDFD
      FEFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF4FEFFFFFC0F7FFFFFCFE
      FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFF5F9FBFF42A1E1FF8AB2
      CDFFF2F2F2FFF4F4F4FF83B6D7FF000000FF000000FF000000FF000000FF0000
      00FFF3F1EFFFC2B7B0FFA0958DFF867C76FF816D61FF907E71FFCBC9C8FFFEFE
      FEFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFCFCFFFF000000FFFEFEFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFEFE
      FEFFD3D3D3FFC5C5C5FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC9C9C9FFDADA
      DAFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFF9F9F9FFABABADFF525353FF343435FF393A3BFF7D7D7EFFDCDCDCFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF
      FFFFFFFFFFFFFEFEFFFF99BBFFFF003FFFFF0F32FFFF000000FFFCFCFFFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC9C9C9FFD7D7
      D7FFD7D7D7FFD7D7D7FFD3D3D3FFCFCFCFFFD0D0D0FFD4D4D4FFD7D7D7FFD7D7
      D7FFD7D7D7FFDFDFDFFF000000FF000000FF000000FF000000FF000000FF0000
      00FFE8F6ECFF6DCB89FF32B759FF2FB382FF40C6F7FF56CCF8FFB7E9FBFFFEFF
      FFFF000000FF000000FF000000FF000000FF000000FF000000FFFEFEFEFF9397
      9AFF434951FF3F444CFF70767AFFA7ADAFFFA9AFB2FF73787BFF18191DFF1A1B
      20FFE0E0E2FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFDFD
      FFFF000000FF105FFFFF0457FFFF003FFFFF0126FFFF0020FFFFA5B0FFFFFDFD
      FFFF000000FF000000FF000000FF000000FF000000FFD0D0D0FFDADADAFFDADA
      DAFFCFCFCFFF867CB2FF3317AFFF2F0FBBFF2F0FBAFF3B21AEFF9891B5FFD1D1
      D1FFDADADAFFDADADAFFE4E4E4FF000000FF000000FF000000FF000000FF7AD1
      93FF29B552FF29B552FF29B552FF27AB4EFF3AC2E2FF3DC6F8FF3DC6F8FF46C8
      F8FFE6F7FDFF000000FF000000FF000000FF000000FFFDFDFDFF6D7176FF565A
      5DFF6A737BFF99B6D6FF7E9FCBFF53647CFF4E607DFF90A7C0FFCAD9E3FFA6AC
      AFFF2E2E2FFFC5C6C7FF000000FF000000FF000000FF000000FFFDFDFFFFE0EA
      FFFF0055FFFF0155FFFF0156FFFF0034FFFF0228FFFF0020FFFF0423FFFF2842
      FFFF000000FFFFFFFFFF000000FF000000FFEFEFEFFFDCDDDCFFDDDDDDFFD1D1
      D1FF3211B8FF3311BCFF3411BCFF3411BDFF3411BDFF3411BCFF3311BCFF3515
      B5FFD4D4D4FFDDDCDDFFDCDCDDFF000000FF000000FF000000FF61C87FFF29B5
      52FF29B552FF29B552FF29B552FF27AE4FFF28A75FFF3DC6F8FF3DC6F8FF3DC6
      F8FF3EC5F7FFE5F7FDFF000000FF000000FF000000FF93979BFF676C74FF636E
      79FF709BCAFF355386FF030A40FF060F5DFF0B3A98FF223E7BFF101527FFA0B9
      D1FFC3CACDFF1B1C1FFFE6E6E6FF000000FF000000FFFFFFFFFF000000FF0055
      FFFF0055FFFF0156FFFF0C58FFFFFFFFFFFFA6B3FFFF0014FFFF0020FFFF0221
      FFFFC8CEFFFFFDFDFFFF000000FF000000FFDADADAFFE0E0E0FFDCDCDCFF3918
      B3FF3612B7FF3613B7FF4526B3FF857DB0FF706DA2FF4C2DBAFF3613B7FF3512
      B7FF4F34B2FFDFDFDFFFDFDFDFFFEEEEEEFF000000FFAFE3BEFF29B552FF29B5
      52FF29B552FF29B552FF29B552FF2AB252FF25A34AFF35BBC0FF3DC6F8FF3DC6
      F8FF3DC6F8FF46C8F8FFFEFFFFFF000000FFDFE0E0FF828689FF84888AFF7897
      A9FF4E84B8FF0C2780FF020B4FFF040F62FF071477FF254CAEFF030844FF070D
      24FFAEC4D6FF939A9FFF464748FF000000FF000000FFFFFFFFFF000000FF0055
      FFFF0156FFFF004DFFFFFFFFFFFFFDFEFFFFFDFDFFFFB1BAFFFF0321FFFF0322
      FFFF4057FFFFFDFDFFFF000000FF000000FFE3E3E3FFE3E3E3FFCECCD4FF3412
      A5FF281A8FFF2449C1FF2E5EC4FF3365BAFF396DD2FFDBDCDCFF644ABEFF3915
      B2FF3714B1FFDDDDDDFFE3E3E3FFE6E6E6FF000000FF2FB657FF29B552FF29B5
      52FF29B552FF46BF6AFFEBF6ECFFFCE4D6FFFBF1E8FFA0D8B4FF3DC6F6FF3DC6
      F8FF3DC6F8FF3DC6F8FFB7E9FBFF000000FFA1A3A4FF9B9C9CFF9E9FA1FF5C88
      A8FF4474A1FF040C63FF060F83FF071491FF07145FFF0C2CAAFF06168AFF0410
      4DFF2F4176FFCBD7DCFF35373BFFDDDDDEFF000000FFFCFDFFFFADC8FFFF0357
      FFFF0051FFFFFFFFFFFF4C87FFFF406FFFFF0017FFFFD9DEFFFFA1ACFFFF0121
      FFFF0020FFFF000000FFFFFFFFFF000000FFE5E5E5FFE5E5E5FF7D69BCFF367D
      F5FF418EEFFF4991E8FF559FF0FF6ABAFAFF53ACF7FF508AD8FFE6E6E6FF6C52
      BDFF6A51BCFFE6E6E6FFE5E5E5FFE5E5E5FFE1F4E6FF29B552FF29B552FF29B5
      52FF32B85AFFFBF0E7FFF0803AFFF07E37FFF07E37FFF5AA7CFFABE6F9FF3DC6
      F8FF3DC6F8FF3DC6F8FF57CDF8FF000000FFCAD2D5FFBAC0C2FFB8BEC2FF617E
      8CFF5381A2FF051075FF0A22DAFF061167FF05070FFF091ECBFF0717ABFF040D
      69FF22488BFF93AFD0FF1D1F24FF636466FF000000FF000000FF3075FFFF0558
      FFFF548DFFFFFCFDFFFFF5F8FFFF7695FFFFFFFFFFFFFCFCFFFFFFFFFFFF0013
      FFFF0020FFFF000000FFFFFFFFFF000000FFE8E8E8FFE8E8E8FF5435ACFF5EAE
      F6FF83CAFEFF66B9FAFF74C2FCFF6FBBF9FF60B8F9FF4B8FDEFFD0CBD2FFEAE9
      EAFFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFAEE2BDFF29B552FF29B552FF29B5
      52FF95BDC6FFF29256FFF07E37FFF07E37FFF07E37FFF07E37FFFCF2EDFF3DC6
      F8FF3DC6F8FF3DC6F8FF40C6F7FF000000FFBFC5C8FFC8D0D3FFBDC5C9FF7E89
      97FF3C5A7CFF314D75FF15207AFF04071EFF05060AFF091DB3FF0C27DBFF0611
      8DFF0E279DFF6284A7FF4A4C50FF323336FFFFFFFFFF000000FF0055FFFF0358
      FFFF2267FFFFFFFFFFFF71A0FFFF265CFFFF0026FFFFF7F8FFFFEDF0FFFF0017
      FFFF0322FFFFA8B2FFFFFCFCFFFF000000FFE9E9E9FFE9E9E9FF4D2BA5FF411A
      A2FF5565C4FF85CBFDFF5DA0E7FF5D9EE6FF6DB9F6FF80A8BDFF965644FFEBEB
      EBFFEBEBEBFFEAEAEAFFEAEAEAFFE9E9E9FFA2DEB4FF29B552FF29B552FF29A4
      63FFB4B9EFFFF18644FFF07E37FFF07E37FFF07E37FFF07E37FFFCE7DAFF40C7
      F8FF3DC6F8FF3DC6F8FF3DC5F7FF000000FFC3CBCEFFBFC6C9FF7182ABFFBCC2
      C5FF8D9BABFF354D72FF344D6FFF334C6FFF1B202AFF293E80FF0D25DEFF0A20
      C4FF133DCCFF5D7A94FF687076FF50555AFFFEFEFFFFFBFCFFFF0156FFFF0F59
      FFFFFFFFFFFFFFFFFFFF0A58FFFFFFFFFFFFDEE2FFFFC8CEFFFFFAFAFFFFCAD1
      FFFF021BFFFF2C46FFFF000000FF000000FFECECECFFECEBEBFF5D3EA8FF451E
      9FFF471FA1FFECECECFF90B8D2FFE9BA8BFFE1A05CFFDA8B2DFFE18F48FFECED
      ECFFECECECFFECECECFFECECECFFECECECFFC7EBD1FF29B552FF29B552FF2B47
      C2FF656FDEFFF7BA94FFF07E37FFF07E37FFF07E37FFF0813BFFEFF9FCFF3DC6
      F8FF3DC6F8FF3DC6F8FF46C8F8FF000000FFC9D4D7FFC8D3D7FF1E2C66FFA3AF
      C2FFC8D2D5FFBEC5C8FF99A1A8FF415979FF3B4D65FF364563FF1934D4FF1247
      DCFF0938A2FF597586FFEBEFF1FFBCC1C3FFFBFCFFFF92B6FFFF044CFFFFFFFF
      FFFFFDFEFFFFFBFDFFFF8EB2FFFFFFFFFFFF7A8BFFFFFFFFFFFFFDFEFFFFF9FA
      FFFF919EFFFF0323FFFF000000FF000000FFEDEDEDFFEDEDEDFF8F7BBDFF4921
      9CFF4B239EFFE9E9E9FFEFEFEFFFE7D8CAFFE6D4C2FFE19431FFE1D0C2FF9C8D
      BAFF9485B5FFEAEAEAFFEDEDEDFFF0F0F0FFF6FBF8FF29B552FF2A8F78FF2B38
      D2FF303DE6FFD3D5FAFFF7BB96FFF18746FFF3955BFFFCF2ECFF55BDE4FF38B6
      E4FF3CC3F4FF3DC6F8FF7CD8FAFF000000FFE2E9EBFFEFF3F4FF999FB0FF0A2C
      96FF708ECBFFDFE8EBFFDBE4E7FFD8E1E4FF9DA5A9FF424951FF1B4BC7FF1553
      BEFF08124EFF71777DFFBAC0C3FFD4D5D5FFFDFDFFFFD9E5FFFF0052FFFFE0EA
      FFFFCCDCFFFF0B5BFFFF387AFFFFFFFFFFFFADB8FFFF021EFFFF576BFFFFFFFF
      FFFF142CFFFF0827FFFF000000FF000000FFF0F0F0FFEFEFEFFFE5E4E9FF4C24
      9AFF4F269CFF795EACFFECECECFFF1F1F1FFF1F1F1FFE8DDD3FFE9A553FF6D40
      91FF4B2399FFEDEDEDFFEEEEEEFFF7F7F7FF000000FF57C378FF2D3ED5FF303E
      E9FF303EE9FF303EE9FF6A74EFFFB8BDF7FF9CB0F3FF3E8BE4FF3486E3FF3485
      E3FF3484E3FF3584E5FFEBF7FDFF000000FFFCFDFDFFFFFFFFFFFCFCFDFF1828
      61FF0E41A6FF4682D7FF8AB1EFFFF6F9FCFFFBFCFCFF91979BFF3766AEFF051C
      76FF2E333DFFBFC7CAFFC0C8CAFFFCFCFCFFFDFDFFFFDCE7FFFF0055FFFF0049
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFCFDFFFF8390
      FFFF0424FFFF102DFFFF000000FF000000FFF8F8F8FFEFEFEFFFF0F0F0FF5933
      9DFF52279AFF55299CFF5B329DFFA696C0FFAE9FC4FF6945A1FF5B2D96FF7644
      85FF5F3A9FFFF0F0F0FFEFEFEFFF000000FF000000FFF4F7FDFF313FE8FF303E
      E9FF303EE9FF303EE9FF303EE9FF303EE9FF303EE9FF303EE9FF303EE9FF303E
      E9FF303EE9FF7F88F1FF000000FF000000FFFFFFFFFFFEFEFEFFFFFFFFFFF6F6
      F7FF171F4CFF2757ABFF518ADEFF4C88E0FF76A2DAFFEAEFF6FF152A64FF2327
      37FFC9D1D4FFE4EBECFFE5E9EAFF000000FFFFFFFFFF000000FF0155FFFF0156
      FFFF1740FFFF0F2DFFFF0A29FFFF445CFFFF1432FFFF001EFFFF0424FFFF0120
      FFFF0020FFFFB0B9FFFFFDFDFFFF000000FF000000FFF2F2F2FFF2F2F2FFF1F1
      F1FF58309BFF582D9BFF5A2F9DFF5C309FFF5C309EFF592E9DFF572C9AFF542B
      98FFF1F1F1FFF2F2F2FFF7F7F7FF000000FF000000FF000000FFDDDFFAFF313F
      E8FF303EE9FF303EE9FF303EE9FF303EE9FF303EE9FF303EE9FF303EE9FF303E
      E9FF6771EEFF000000FF000000FF000000FF000000FFFEFEFEFFFEFEFEFFFFFF
      FFFFFEFEFEFFA0A2AFFF21274FFF071251FF070F44FF1A214AFF888B93FFFBFB
      FBFFFFFFFFFFF9F9FAFF000000FF000000FFFFFFFFFF000000FF000000FFF2F1
      FFFF8F9DFFFF233EFFFF1D39FFFF1B38FFFF1533FFFF102FFFFF0A29FFFF0000
      00FFFBFBFFFFFDFDFFFFFFFFFFFF000000FF000000FFFFFFFFFFF3F3F3FFF3F3
      F3FFF3F3F3FFCAC0DBFF704BA7FF5C2F9DFF5C2F9CFF653DA1FFBAABD2FFF3F3
      F3FFF3F3F3FFF7F7F7FF000000FF000000FF000000FF000000FF000000FFF3F4
      FDFF5D68EDFF303EE9FF303EE9FF303EE9FF303EE9FF303EE9FF3643E9FFB2B8
      F6FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFCFCFF000000FF000000FF000000FF000000FF000000FF000000FFFEFE
      FFFFFEFEFFFF7A8BFFFF5D71FFFF586EFFFF556BFFFF4D63FFFFFBFBFFFFFEFE
      FFFFFEFEFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFBFB
      FBFFF5F5F5FFF4F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF7F7
      F7FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFF7F7FDFFC7CBF8FFA5ABF4FFB3B8F6FFE3E5FBFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF
      FFFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFD
      FDFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCD2CBFFBBA799FFB4A091FFA69080FF9F8878FF988170FF917A
      69FF8A7260FF7C6350FF755B48FFB4A79DFF0000000000000000000000000000
      00000000000001079F000313A9000418AE000419AE000313A9000108A0000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFFCFCFFFF000000FFFFFFFFFFFDFDFEFF000000FFFFFFFFFFFDFDFEFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000009C9294009C757300D6C3
      C600D6CBCE00D6C3C600CEAAAD00A57D7B0073495A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8B5A7FFFEFDFCFFB4D3ACFFA2D5E2FFE5D5CCFFE0CDC2FFDBC5
      B9FFD7BDAFFFD2B5A5FFCDAD9BFF705642FF0000000000000000000000000104
      9D00041CB1000730C0000734C4000735C5000735C5000734C3000731C100041F
      B30001069E00000000000000000000000000000000FFFFFFFFFFFEFEFFFF0000
      00FFC1BFFFFF7673FFFF7875FFFF7674FCFF6865DDFF6764DCFF8684E3FFFEFE
      FEFFFDFDFEFF000000FF000000FF000000FF00000000D6C3C600E7E3E700DEDB
      DE00DED3D600D6BABD00D6C3C600C6A2A500C69A9C0073495A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8B5A7FFFEFDFCFF77C577FF2CB7E6FFF9EBE5FFC9B6A9FFC0AB
      9EFFA48F7EFF8A7260FFF0CFBFFF705642FF00000000000000000109A100052B
      C3000735C7000733C2000732C2000732C2000732C2000732C2000733C3000735
      C400062DBE00020CA4000000000000000000FFFFFFFFFEFEFFFF000000FF7673
      FFFF7976FFFF726FFFFFA2A0EBFFC4C3EDFFB1B0E7FF7673DFFF615EDBFF6663
      DCFFCAC9F2FFFCFCFEFFFFFFFFFF000000FFD6B2B500EFEBEF00F7F3F700EFEB
      EF00E7E3E700D6BABD00D6B2B500CEA2A500BD929400A582840073495A007349
      5A0073495A00000000000000000000000000DCD2CBFFBBA799FFB4A091FFA690
      80FF9F8878FFC8B5A7FFFFFEFEFFFEFBFAFFFBF2EEFFF9EEE7FFF9E8E1FFF7E4
      DAFFF6DFD5FFF2D6C8FFF2D0C2FF705642FF0000000001049B00052BCA000636
      D8000431CD000027C400032EC1000732C2000732C2000430C1000027BF00042F
      C1000735C400072EBE0001069E0000000000000000FF000000FF7673FFFF716E
      FFFFCECEF6FFF8F8F1FFEFEFF1FF969295FFF8F9FBFFF3F3F2FFF6F6F3FF6360
      DCFF6865DCFFCECDF3FFFDFDFEFFFFFFFFFFD6B2B500FFFBFF00FFFBFF00F7F3
      F700E7E3E700D6AAAD00D69A9C00CE8A8C00BD8A8C009C6D6B0073495A00C6A2
      A500BDA6A50073495A0073495A0000000000C8B5A7FFFEFDFCFFB4D3ACFFA2D5
      E2FFE5D5CCFFCEBCB2FFC7B4A7FFB6A698FFAB9B8FFF9A8B7CFF8F7C6DFF8F7C
      6CFF847361FF796956FF745B47FFD2C6BEFF00000000031ABA000537E7000331
      DD00123DD8006480E0001840CB00002CC100022DC0000F38C4006580D9001B43
      C700052FC1000735C500051FB30000000000000000FF8986FFFF7471FFFFE6E5
      F3FFEFEFF3FFEFEFEFFFF1F1F1FFAAA7A8FFFAFAFAFFF2F2F2FFF5F5F2FFFEFE
      F4FF615EDBFF6663DCFF000000FFFFFFFFFF0000000000000000C6828400DE9E
      9C00CEA2A500CE757300CE656300CE656300BD868400E7C3C600DEC3C600D6A2
      A500AD868400BDA6A500ADA69C0073495A00C8B5A7FFFEFDFCFF77C577FF2CB7
      E6FFF9EBE5FFC9B6A9FFCCB9AFFFF6E1D7FFF5DED3FFF4DACFFFE8CBBDFFDDBF
      B0FFC8AB9AFF8FC391FF9F8573FF0000000001049E000430E4000436F100002A
      E4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2E800FFFFFF006984
      DA000026BE000733C3000731C1000108A000FCFCFFFF7875FFFF9E9CFBFFF0F0
      F2FFF8F8F8FFA7A4A4FFF2F2F2FFF2F2F2FFF2F2F2FFFCFCF2FFB4B5F2FFF1F1
      F2FFEFEFF1FF6360DBFF9D9BE8FFFDFDFEFF0000000000000000CE828400FFB2
      2900FFBE5200CE8A8C00C66D6B00B54D4A00C69A9C00DEB2B500D6A2A500CEA2
      A500AD868400A57D7B00A592940073495A00C8B5A7FFFFFEFEFFFEFBFAFFFBF2
      EEFFF9EEE7FFF9E8E1FFDCB59EFFFF8C47FFFF8F56FFF17F49FFD87240FFBF63
      36FFAA5128FFA8502BFFA38876FF00000000020FAF000336FA000335F8000232
      EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFFFF00A7B7E900133A
      C400052FC1000732C2000734C4000313AA00BAB9FFFF7370FFFFF4F4F3FFF2F2
      F2FFF0F0F0FFA19E9EFF898485FFF1F1F1FFFBFBF2FFAEB0F2FFF4F4F2FFF2F2
      F2FFF6F6F3FF6865DCFF6663DCFF000000FF00000000CEB2B500DE965A00FFB6
      3900FFB63900FFB63900FFBA3900EFAE5200DEA67300DE9E9C00DEBABD00D6B2
      B500B58A8C00BD8A8C00AD86840073495A00E5E1DEFFC7B4A7FFB6A698FFAB9B
      8FFF9A8B7CFF8F7C6DFFDFBCA9FFFF995FFFFF9F6CFFFA8F5AFFE6804FFFCF73
      46FFB55F34FFA65530FFA88D7CFF000000000619BC001747FE00093AFC000435
      F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBAEF00062FC500022D
      C0000732C2000732C2000736C5000419AE00918FFFFF6E6BFFFFFFFFF9FFFAFA
      FAFFF7F7F7FFF1F1F1FF9E9B9BFF706A68FFB6B7F4FFF6F6F4FFF6F6F5FFF7F8
      F7FFF5F6F7FF9391E3FF6865DCFF000000FF00000000C6A2A500EFAE5200FFBE
      4A00FFBE4A00FFC35200FFC34A00FFBA4200FFBA3900D68E5200D6AAAD00D6B2
      B500B5828400D69A9C00C692940073495A0000000000CCB9AFFFF6E1D7FFF5DE
      D3FFF4DACFFFE8CBBDFFE2C4B4FFFFA978FFFFB084FFFF9E6CFFF68C58FFDE7E
      4EFFC66C40FFAF5C35FFAC9180FF000000000B1DBE004168FE001C49FC000335
      FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6F2000D36D000002C
      C6000732C2000732C2000736C5000418AD008C89FFFF6E6BFFFFFBFBF2FFAAA7
      A7FFF6F6F6FFF6F6F6FFFFFFFFFF241C20FF7D7879FF827D7DFFDCDBDBFFACA9
      A9FFB8B5B8FF9C9AE4FF6865DCFF000000FF00000000C6AA9C00FFBE5200FFCB
      6300FFD36B00FFD37300FFD37300FFCB6300FFCB5A00CE927300D6BABD00D6B2
      B500B57D7B00AD7D7B00AD7D7B0073495A0000000000DCB59EFFFF8C47FFFF8F
      56FFF17F49FFD87240FFE6CCBDFFFFBA94FFFFBE9EFFFFA97BFFFF9862FFF48A
      55FFDB7948FFC1683FFFAF9584FF000000000613B4005B7CFC00486CFD000133
      FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFFFF00B6C4F2001A41
      D300042FC8000732C4000734C3000212A900A6A4FFFF706CFFFFFFFFFAFFF4F4
      F4FFF6F6F6FFF8F8F6FFCBCCF6FFFEFEFDFFEFEFEFFFEFEFEFFFF1F1F1FFF0F0
      F0FFF1F1F0FF7977DFFF6764DCFF000000FF00000000D6A29400FFCB6300FFD3
      7300FFDB7B00FFDB8400FFDB8400FFD37300FFD36B00CE828400DEBABD00D6AA
      AD00B57D7B00BD8A8C00BD86840073495A0000000000DFBCA9FFFF995FFFFF9F
      6CFFFA8F5AFFE6804FFFE9CFC1FFFFAA7BFFFFA778FFFF9C69FFFF8B53FFF47F
      48FFDC6E39FFC36232FFB29888FF000000000003A0004A6AF3008FA6FF001F46
      FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2F600FFFFFF00627F
      E7000028D0000734CC000730C30000069F00E5E5FFFF7875FFFFCECDF8FFFBFB
      FDFFF6F6F6FFF6F6F6FFF6F6F6FFF4F4F4FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFFDFDF4FF5C58D8FF8683F8FF000000FF00000000EFC37B00FFDB7B00FFE3
      9400FFEB9C00FFEBA500FFEBA500FFE39400FFDB8400CE969400DEC3C600D6A2
      A500C66D6B00B5696B00B575730073495A0000000000E2C4B4FFFFA978FFFFB0
      84FFFF9E6CFFF68C58FFD9B3A2FFDFD3CEFFD9CBC3FFD4C3B9FFCEBAB0FFC8B2
      A7FFC1AB9FFFBDA496FFB69D8FFF00000000000000001A2FCB0099AFFF008BA2
      FE00214DFB004D71FC000E3DFB000030FB000031F7000636F1004C6EF100103C
      E3000432DB000636D700041CB50000000000000000FF7673FFFF6E6AFFFFFFFF
      F8FFFCFCFCFFF5F5F5FFF6F6F6FFEAE9E9FFF4F4F4FFF2F2F2FFF2F2F2FFF1F1
      F2FF918FE3FF7976FFFFEBEBFEFFFDFDFEFF00000000FFC77300FFDB8400FFEB
      A500FFEFAD00FFF3B500FFF3B500FFEB9C00FFE39400CE9A9C00E7CFCE00E7D7
      D600DEAAAD00CE6D6B00CE65630073495A0000000000E6CCBDFFFFBA94FFFFBE
      9EFFFFA97BFFFF9862FFF48A55FFDB7948FFC1683FFFAF9584FF000000000000
      000000000000000000000000000000000000000000000004A000415EEC00B8C7
      FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133F900052FF2000635
      EB000537E900052CCD0000049C0000000000FDFDFFFFE6E6FFFF7774FFFF7774
      FFFFFFFFF6FFFBFAFDFFF5F5F5FF979394FFFAFAFAFFF1F1F2FFF6F6F2FFB3B2
      F6FF7A77FFFF908DFFFF000000FFFFFFFFFF00000000ADAAAD00A5929400B59A
      9400BD9E9400E7DFB500FFF7BD00FFF3AD00FFEB9C00AD868400E7D7D600E7C3
      C600DEBABD00DEB2B500D6B2B5000000000000000000E9CFC1FFFFAA7BFFFFA7
      78FFFF9C69FFFF8B53FFF47F48FFDC6E39FFC36232FFB29888FF000000000000
      00000000000000000000000000000000000000000000000000000309A5004260
      EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6EFD003961FD001444
      F900042CD7000109A2000000000000000000FFFFFFFFFCFCFFFFC8C7FFFF7774
      FFFF6D6AFFFFBCBAFAFFF7F7F6FFF9FAF1FFF9F9F2FFDAD9F5FF7A77FEFF7A77
      FFFF7F7CFFFF000000FF000000FF000000FF0000000000000000D6B2B500C6B2
      B500BDA6A500A5929400AD8A8C00C6A28400D6B28400AD868400D6B2B500D6B2
      B500D6B2B500DEAAAD00DEAAAD000000000000000000E6DCD8FFDFD3CEFFD9CB
      C3FFD4C3B9FFCEBAB0FFC8B2A7FFC1AB9FFFBDA496FFB69D8FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000004
      A0001E32CD005876F600859EFE008BA3FF007994FE005376FC00234AF000051E
      C50001049C00000000000000000000000000000000FF000000FFFCFCFFFFEFEF
      FFFF7673FFFF7875FFFF7370FFFF6F6CFFFF716EFFFF7673FFFF7673FFFFB7B5
      FFFF000000FF000000FF000000FF000000FFFFFFFF0000000000000000000000
      000000000000D6B2B500D6B2B500D6B2B500D6B2B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004A0000917B6001022C3000D1FC2000311B40001059F000000
      000000000000000000000000000000000000000000FF000000FFFFFFFFFFFDFD
      FFFFFFFFFFFFF6F6FFFFC0BFFFFFA8A6FFFFB3B1FFFFE1E1FFFF000000FFFDFD
      FFFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000FFFFFFFFFBFCFDFFFFFFFFFF0000000000000000FFFFFFFFFBFCFDFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000070707000585858005858580058585800707070000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002B2A2EFF201F23FF201F23FF201F
      23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F
      23FF201F23FF201F23FF201F23FF2B2A2EFF000000000000000000000000FDFD
      FEFFE5EAF3FF1E4C96FF204E97FF204E97FF204E97FF204E97FF1E4C96FFE4EA
      F2FFFDFDFEFF0000000000000000000000000000000070707000585858005858
      5800585858000176A9000171A3000171A3000275A800016FA200404040005858
      5800585858005858580058585800585858000000000064646400646464007762
      6200848080000000000000000000000000000000000000000000000000006464
      640064646400646464008480800000000000F4F4F4FF201F23FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000201F23FFF4F4F4FF0000000000000000FBFCFDFF3560
      A5FF24529CFF1E4D97FF1E4C96FF1E4C96FF1E4C96FF1E4C96FF1E4C95FF1E4C
      95FF2B569CFFFBFCFDFF00000000000000002626260026262600262626002626
      26002626260015ADD9002BC1EB002AB8DF0028C0EA00057EAF00262626002626
      260026262600262626002626260040404000D6CDCD00E9E9E900D2B7B6009C8A
      8A00C49898000000000000000000000000000000000000000000D6CDCD00E9E9
      E900D2B7B6009C8A8A00C498980000000000000000002A292DFF7D837EFF0000
      000000000000000000008E8D8FFF353438FF343437FF8C8E8DFFFEFEFEFF0000
      0000000000007F7E81FF2A292DFF0000000000000000FDFDFEFF3F69ADFF2E5C
      A6FF2B579EFF183366FF2C579EFF2856A0FF1E4C96FF1E4C95FF173060FF1730
      60FF1E4C95FF2D579DFFFDFDFEFF0000000099999900FFF1DF00FFF1DF00FFF1
      E000FFF1E00032ADD500BBE5EF00CDF7FF00AFE4F200198FBD00FFF1DF00FFF1
      DF00FFF1DF00FFF1DF002626260058585800D0BDBD00CEA4A400CEA4A400B879
      7400AA9794000000000000000000000000000000000000000000D0BDBD00CEA4
      A400CEA4A400B8797400AA9794000000000000000000F4F4F4FF201F23FFFDFF
      FDFF939294FF201F23FF363539FF9D9D9FFF9E9EA0FF343437FF201F23FF8D92
      8FFF00000000201F23FFF4F4F4FF00000000FFFFFFFFE6EBF4FF2E5CA6FF2E5C
      A6FF2B579EFF183366FF2B579EFF2E5CA6FF2F5DA7FF1D4B94FF173060FF1730
      60FF1E4C95FF1E4C96FFE1E7F1FFFFFFFFFF9999990099999900999999009999
      9900999999004DB6D800DAEBEF00FFFFFF00D4EEF5001590BE00999999009999
      99009999990099999900999999000000000000000000FEA82100FCB44300C48D
      8D00595353007C7C7C00707070004F4C4C002E75B4007C7C7C007C7C7C00FEA8
      2100FCB44300DD9B7400595353000000000000000000000000002A292DFF4143
      43FF201F23FFF8F8F8FF00000000D2D2D3FFD3D3D3FF00000000F8F8F8FF201F
      23FF3B3D3EFF29292CFF0000000000000000FBFCFDFF2E5CA6FF2E5CA6FF2E5C
      A6FF2E5CA6FF2E5DA7FF2E5CA6FF2E5CA6FF2F5EA8FF174082FF1D4B94FF1E4C
      95FF1E4C96FF1E4C96FF1E4C96FFFBFCFDFF0000000000000000000000000000
      00000000000025A7D20040B1D80048B0D2002B9FC60044A6C800000000000000
      000000000000000000000000000000000000D0C7C700FFBE4C00FFC85D00FFC4
      5600DD9B740099999900C9BCB800A2D4FB002E75B400CDC2C20026262600FFBE
      4C00FFC85D00FFC45600DD9B7400000000000000000000000000F4F4F4FF201F
      23FF9A999BFF00000000242327FF201F23FF201F23FF242327FF00000000A1A1
      A2FF201F23FFE9F2E9FF0000000000000000000000002F5DA6FF2E5CA6FF2E5C
      A6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2F5DA7FF1E4C
      96FF1E4C96FF1E4C96FF204E97FF000000000000000000000000000000000000
      0000000000000000000082828200AAA195001414140038383800000000000000
      000000000000000000000000000000000000CEA4A400FFD06E00FFDD8800FFDD
      8800DD9B74000000000000000000999999002626260000000000CEA4A400FFD0
      6E00FFDD8800FFDD8800DD9B7400000000000000000000000000000000002A29
      2DFF201F23FF212024FF201F23FF201F23FF201F23FF201F23FF212024FF201F
      23FF28282BFF00000000000000000000000000000000305DA7FF2E5CA7FF2855
      9DFF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF1E4C
      96FF1E4C96FF1E4C96FF204E97FF000000000000000000000000000000000000
      000000000000929292004F4F4F008E828100332F2F001D1D1D00535353008888
      880000000000000000000000000000000000CEA4A400FFE29300FFF2B300FFEF
      AB00DD9B74000000000000000000999999002626260000000000CEA4A400FFE2
      9300FFF2B300FFEFAB00DD9B740000000000000000000000000000000000F4F4
      F4FF201F23FFB0B3B1FF262529FF201F23FF201F23FF252528FFB1B5B1FF201F
      23FFE7F1E7FF00000000000000000000000000000000305DA7FF2E5CA7FF2855
      9DFF2E5CA6FF2E5CA6FF1C3B73FF173264FF2F5EAAFF2E5CA6FF2E5CA6FF244F
      96FF1B478DFF1E4C96FF204E97FF000000000000000000000000000000008080
      8000747474008C8C8C00A5A5A500746F6F003E3B3B0048434300574E4E004E4B
      4B00555555007171710000000000000000000000000000000000D1B1B100CCAE
      AE00C1A3A1000000000000000000000000006C6A6A0000000000000000000000
      0000CCAEAE00CCAEAE00C1A3A100000000000000000000000000000000000000
      00002A292DFF7A817BFF000000000000000000000000000000007C7C7EFF2928
      2CFF00000000000000000000000000000000000000002F5DA6FF2E5CA6FF2E5C
      A6FF2E5CA6FF2E5CA6FF1C3B73FF173264FF2F5EAAFF2E5CA6FF2E5CA6FF2F5D
      A7FF1E4C96FFABBCD8FFFFFFFFFFFFFFFFFF000000008888880088888800C9C9
      C900A3A3A3007F7F7F00828282007C7B7B004D4D4D00707070007C7C7C00736D
      6D007464640056505000515151007A7A7A000000000000000000000000000000
      00000000000000000000C7AAAA00C1A3A100C1A3A100B9908E007C7C7C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F4FF201F23FFFCFFFCFF000000000000000000000000201F23FFE7F1
      E7FF00000000000000000000000000000000FBFCFDFF2E5CA6FF497AC7FF2E5D
      A7FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF8DA6
      CEFF235098FFFBFCFDFF0000000000000000A5A5A500AEAEAE00989898008282
      8200A4A4A400B9B9B900D1D1D1008E8E8E00787878006B6B6B00818181006161
      610033333300B79898008A7676006A6A6A000000000000000000000000000000
      000000000000D0BDBD00D0BDBD00E6E6E600D1B1B100C4989800999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A292DFF7A807BFF00000000000000007C7C7EFF29282CFF0000
      000000000000000000000000000000000000FFFFFFFFE7ECF4FF2C5AA4FF3664
      AFFF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF2E5CA6FF00000000FFFF
      FFFFFEFEFEFFFFFFFFFF00000000000000009F9F9F009C9C9C00B5B5B500C7C7
      C700E1E1E100E6E6E600D0D0D000D8D8D800D1D1D100C3C3C3009A9999007C77
      77004542420093808000847575007C7C7C000000000000000000000000000000
      00000000000000000000CEA4A400DD9B7400C76A6A0083595900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F4F4FF201F23FFFDFFFDFF00000000201F23FFF2F3F3FF0000
      00000000000000000000000000000000000000000000FDFDFEFF406AADFF3160
      AAFF2C5AA4FF2E5CA6FF2E5CA6FF2E5CA6FF305DA7FF2E5CA6FFFCFDFDFF0000
      000000000000000000000000000000000000B9B9B900D3D3D300DEDEDE00C7C7
      C700E1E1E100DFDFDF00F2F2F200FCFCFC00ECECEC00DFDFDF00F7F7F700EEEA
      EA00DECCCC008F8A8A008D888800000000000000000000000000000000000000
      00000000000000000000E9BF9900FFBA4200FFBA4200E7B06D00707070000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002A292DFF7A807CFF7C7C7EFF28282BFF000000000000
      0000000000000000000000000000000000000000000000000000FBFCFDFF3E68
      ACFF2C5AA4FF2D5BA5FF2E5CA6FF2F5DA6FF0000000000000000000000000000
      000000000000000000000000000000000000B9B9B900B9B9B900BABABA007878
      78006B6B6B00B8B8B800F2F2F200FCFCFC00ECECEC00DFDFDF00F7F7F700CACA
      CA00C0C0C000B9B9B90000000000000000000000000000000000000000000000
      00000000000000000000FACB8400FFCB6500FFD06E00FFCB6500707070000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F4FF201F23FF201F23FFF1F4F1FF000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FEFFEAEFF6FF2E5CA6FF2F5DA6FF6F8FC1FFFFFFFFFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000B9B9
      B900B9B9B900C8C8C800D5D5D500E6E6E600CDCDCD00D3D3D300B9B9B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCAEAE00FFD06E00FFE69A00FFECA400FFDD8800707070000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002A292DFF2A292DFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFBFCFDFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCAEAE00CEA4A400C9BCB800D6CBAB00FFE69A00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F4FFF4F4F4FF00000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000FFFFFFFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFF7F7F7FFEEEEEEFFEEEEEEFFF7F7F7FFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000FEFEFEFF222222FF121212FF1212
      12FF121212FF121212FF020202FF010101FF010101FF020202FF121212FF1212
      12FF121212FF121212FF222222FFFEFEFEFF0000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C2FFD5D6D7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2C4D8FF0D98EDFFCBBDBFFF0000000000000000000000FF000000FF0000
      00FF000000FF000000FFC6C6C6FF0000000000000000C7C7C7FF000000FF0000
      00FF000000FF000000FF000000FF00000000FEFEFEFF222222FF121212FF1212
      12FF121212FF121212FF020202FF000000FF000000FF020202FF121212FF1212
      12FF121212FF121212FF222222FFFEFEFEFF0000000000000000000000000000
      00000000000000000000CFD0D3FF0EBEE9FF0AD3F4FF0FE5F9FF17F5FDFF41F1
      FCFF7E8286FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2C4
      D8FF0D9DF3FF8CDFFEFF7CE2FBFF0000000000000000000000FF000000FF0000
      00FF000000FFC6C6C6FFE3E3E3FF000000FF000000FFE3E3E3FFC7C7C7FF0000
      00FF000000FF000000FF000000FF00000000FFFFFFFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFF6F6F6FF101010FF101010FFF6F6F6FFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFF00000000796147FFD2D3D4FF0000
      0000F9FBFBFFAA8B69FF7C7E82FF04B3E7FF04BFEAFF0CDCF5FF15F3FCFF14F2
      FCFF2DA6DFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2C4D8FF0D9D
      F3FF8CDFFEFF84E9FFFFA4D3F3FF0000000000000000000000FF000000FF0000
      00FF000000FF00000000000000FF000000FF000000FF000000FF000000000000
      00FF000000FF000000FF000000FF00000000000000000000000000000000FDFD
      FDFFF4F4F4FFEDEDEDFFECECECFF101010FF101010FFECECECFFEDEDEDFFF4F4
      F4FFFDFDFDFF00000000000000000000000000000000DB8908FFF0C20DFFEDAE
      0CFFD78408FFBD6505FF956525FF04B1E7FF04B6E8FF08D1F1FF12ECFBFF17F5
      FDFF51EEFBFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2C4D8FF0D9DF3FF8CDF
      FEFF84E9FFFFA4D3F3FF000000000000000000000000000000FF000000FF0000
      00FF000000FF00000000000000FF000000FF000000FF000000FF000000000000
      00FF000000FF000000FF000000FF000000000000000000000000FFFFFFFF5151
      51FF010101FF000000FF010101FF000000FF000000FF010101FF010101FF0101
      01FF525252FFFFFFFFFF000000000000000000000000C07C12FFF0CA0DFFF2CE
      0EFFE19009FFC46E05FFB86104FF04B7E8FF04ACE5FF06C7EEFF0FE3F9FF19F6
      FDFF11ECFBFFD9D9DAFF00000000000000000000000000000000000000000000
      0000F7F5F5FFF0EBEBFFFEFEFEFF00000000000000002F5E90FF8DDFFEFF84E9
      FFFFA4D3F3FF000000000000000000000000000000009D9D9DFF000000FF0000
      00FF000000FFC6C6C6FFE3E3E3FF000000FF000000FFE3E3E3FFC7C7C7FF0000
      00FF000000FF000000FF9D9D9DFF000000000000000000000000FEFEFEFF1212
      12FF121212FF00000000000000FFEDEDEDFFEDEDEDFF010101FF000000FF0000
      00FF121212FFFEFEFEFF000000000000000000000000A19B92FFEBAC0BFFF2C9
      0DFFEAA20AFFD07C07FFAF5504FF3F646FFF03A9E4FF09C9F0FF13CAE1FF16F5
      FDFF13EFFBFF689AB3FF00000000000000000000000000000000B29C9CFFA58A
      8AFFA28682FFBFAAA7FFA88E8DFFB9A4A4FFAC9393FFDACDCDFF3E88C1FFA4D3
      F3FF000000000000000000000000000000000000000000000000808080FF0000
      00FF000000FF000000FFC6C6C6FF0000000000000000C6C6C6FF000000FF0000
      00FF000000FF808080FF00000000000000000000000000000000FEFEFEFF1212
      12FF121212FF00000000000000FFEDEDEDFFEDEDEDFF010101FF000000FF0000
      00FF121212FFFEFEFEFF00000000000000000000000000000000E59809FFF2C9
      0DFFEDA90AFFD68408FFB55A04FF8B7B65FFCED0D2FF34834AFF14BE46FF2CD8
      66FF28C45BFF7C7F82FF000000000000000000000000927474FF9B746AFFFFF0
      D5FFFFFDEDFFFFFFFCFFFFFDEEFFFFF1D5FFD8CBCBFFE4DADAFF000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF808080FF0000000000000000000000000000000000000000FEFEFEFF1212
      12FF121212FF00000000000000FFEDEDEDFFEFEFEFFF131313FF000000FF0000
      00FF121212FFFEFEFEFF00000000000000000000000000000000A08B66FFEFB8
      0CFFE9A50AFFDD8B08FFA96517FF828791FF04B131FF04AA2CFF04BB3CFF08DB
      57FF0BED6EFF49DE7EFF0000000000000000FAF9F9FF8B6867FFFDD0ABFFFFE7
      C7FFFFF9E1FFFFFCE8FFFFF9E1FFFFE7C9FFFFD1ABFFD1C2C2FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9D9DFF000000FF000000FF000000FF000000FF000000FF000000FF9D9D
      9DFF000000000000000000000000000000000000000000000000FEFEFEFF1212
      12FF121212FF00000000000000FFEDEDEDFF0000000000000000F8F8F8FF0000
      00FF121212FFFEFEFEFF000000000000000000000000000000004F6DA2FF217D
      F1FF2C60C9FF3F60B3FF0E44C2FF0434B8FF08B443FF03A225FF04B232FF07D1
      51FF0BEC6EFF09E25FFFB2B3B7FF00000000907272FFEFA677FFFCC399FFFFD6
      B1FFFFE4C3FFFFEACAFFFFE4C3FFFFD6B1FFFCC499FFCBB7B4FFFEFEFEFF0000
      00000000000000000000000000000000000000000000BBBBBBFF000000FF9A9A
      9AFF0000000000000000000000FF000000FF000000FF000000FF000000000000
      0000999999FF000000FFBABABAFF000000000000000000000000FEFEFEFF1212
      12FF121212FF00000000000000FFEDEDEDFFEDEDEDFF000000FF000000001111
      11FF121212FFFEFEFEFF00000000000000000000000000000000C6C7C8FF0B68
      EBFF0D76F0FF0A5EE6FF0646C9FF042CAFFF5C8774FF03981EFF04AF30FF05C6
      47FF0AE863FF0BEA6DFF1E8D33FF000000008D6D6DFFF6A069FFF9B281FFFCC1
      96FFFCCCA3FFFDD0A8FFFCCCA5FFFBC296FFFFC186FFDBA88DFFF6F3F3FF0000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF00000000868686FF000000FF000000FF858585FF000000000000
      00FF000000FF000000FF000000FF000000000000000000000000FEFEFEFF1212
      12FF121212FF00000000000000FFEDEDEDFFFEFEFEFFEDEDEDFFFEFEFEFF0B0B
      0BFF121212FFFEFEFEFF00000000000000000000000000000000000000000854
      DBFF129EF8FF0B69ECFF074CCFFF042DB0FF325091FF03981EFF04A82AFF04BE
      3FFF09E15BFF0CEF79FF3AC858FF00000000917272FFF59F67FFFFC68EFFFFD5
      A1FFFFE0B0FFFFE6B8FFFFE4B6FFFFDCABFFFFD09BFFD5B2A4FFFBFAFAFF0000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000000000000000000000FEFEFEFF1212
      12FF101010FFF0F0F0FF000000FFDDDDDDFFEDEDEDFFEDEDEDFFB2B2B2FF0202
      02FF121212FFFEFEFEFF0000000000000000000000000000000000000000074E
      D0FF13A3F7FF0D78F1FF0853DBFF0437BAFF0434B7FF07B13CFF9FA1A3FF0000
      0000FDFDFDFF8D9997FF4BBC75FF00000000DAD0D0FFB7806AFFFFD39FFFFFE3
      B5FFFFEFC5FFFFF1CCFFFFF1CBFFFFEDC1FFFFDFAFFFF1ECECFF000000000000
      00000000000000000000000000000000000000000000CCCCCCFF000000FF0000
      00FF000000FF000000FFA0A0A0FF0000000000000000A0A0A0FF000000FF0000
      00FF000000FF000000FFCBCBCBFF000000000000000000000000FFFFFFFFD3D3
      D3FF010101FF000000FF000000FF000000FF000000FF000000FF000000FF0101
      01FFD3D3D3FFFFFFFFFF00000000000000000000000000000000000000004E60
      7FFF108FF5FF118DF5FF095DE6FF0645C8FF0429ABFF00000000000000000000
      00000000000000000000000000000000000000000000B7A1A1FFF9CA9AFFFFEE
      C4FFFFF2D4FFFFF6DEFFFFF6DCFFFFF2D0FFD7B5A6FFDED5D5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C1C3FFB2B3B4FFF6F6F6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3B1B1FFCA9F
      8BFFFFF1D7FFFFFAEFFFFBE7D3FFD9CBC9FFD2C4C4FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FF0F0F0FFF000000FF000000FF000000FF000000FF0E0E0EFFF7F7
      F7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4DD
      DDFFBEAAAAFFC9B9B9FFCABABAFFFDFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFA7A5
      A3FF969492FF969492FF969492FF969492FF969492FF969492FFA1A1A1FFE5E5
      E5FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3957000CC835700C8764600CA7B4E00CB7B4E00CA7B
      4E00CA7B4E00CA7B4E00CA815500CD865C0000000000221DFE001B11E100383C
      B50021AAFF001D9FFC000C85FF007A768500EB971000D9982200D9751D0099B0
      83003AC8650043C35F0034A24800B6C7B4000000000000000000000000000000
      00000000000000000000FEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000AEAAA7FFCBCB
      CBFFD0D0D0FFDADADAFFE3E3E3FFECECECFFF5F5F5FFF6F6F6FF928F8DFF918A
      86FFB5B5B5FF0000000000000000000000000000000000000000000000000000
      00000000000000000000CB825600FCF3EC00FAF1E800FAF0E700FBF1E900FBF2
      EA00FBF2EA00FBF2EB00FDF4EE00CB8358001A1EF500151AFB001211E8000909
      B70010AFFC0010AAFB000089FE004A528000EB970F00DC9A2300D57A1A007A66
      25002CC0580039C05A0033A1480026581E000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFD8D6D2FF625949FF625949FFD9D6D2FFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000CBCBCBFFCCCC
      CCFFD2D2D2FFDBDBDBFFE5E5E5FFEFEFEFFFF6F6F6FFF8F8F8FF9B9B9BFFDDDD
      DDFFBAB7B6FFA6A6A6FF00000000000000000000000000000000000000000000
      00000000000000000000CF825300EFF1E700FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00EFF2E800CE8156003344F8002C42FA001C24ED000B0C
      CE0003B7F90004AFFB000090FE0050568700F1A31E00E0A33100DA8227007C6F
      2C002AC15A0039C15B0034A2490030612800000000000000000000000000D6D4
      D0FF9D978DFFFDFDFCFF645B4BFFB1A795FFB1A795FF645B4BFFFDFDFCFF9C96
      8CFFD6D4D0FF0000000000000000000000000000000000000000CDCDCDFFCCCC
      CCFFD2D2D2FFDBDBDBFFE4E4E4FFEDEDEDFFF3F3F3FFF5F5F5FFA3A3A3FFF7F7
      F7FFD9D9D9FFBBB9B7FFB2B2B2FF000000000000000000000000000000000000
      00000000000000000000CD855500FBF5EE00FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00FBF6EF00CC835600849BFB0086A2FC006571F500120B
      E2004DDEFB0035D0FC00019EFC004F558D00F5A72300E4AB3F00E18B33008074
      2D002AC15F0039C15E0034A44B0032642A0000000000FFFFFFFFD6D3CFFF6057
      47FF7F7565FF5E5647FF9E9483FFB0A694FFB0A694FF9E9483FF5E5647FF7E75
      64FF605747FFD6D3CFFFFFFFFFFF000000000000000000000000D0D0D0FFCCCC
      CCFFD1D1D1FFDADADAFF717171FF565656FF555555FF828282FFF7F7F7FFEFEE
      EDFFF6F6F6FFD6D6D6FF948E8AFFE2E2E2FFD69E7C00D3936E00CF875E00D08C
      6400D18C6400D08C6400CA845200FFF7F100FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00FFF7F100CB855600859FFA0090ADFC007C8EF800140E
      F10063E8FB0068E7FD0045C1FD005B6FAE00FBBE5500E5AF4300E68E34008479
      2F0028C2610039C2600034A54D0032672A0000000000FFFFFFFF9D988EFF7F75
      65FFB0A694FFAFA593FFB0A694FFB0A694FFB0A694FFB0A694FFAFA593FFB0A6
      94FF7F7565FF9E988EFFFFFFFFFF000000000000000000000000D0D0D0FF8E8E
      8EFF8F8F8FFF969696FF9E9E9EFF000000FF272727FFF6F6F6FFF7F7F7FFF9F9
      F9FFF7F7F6FFF6F6F6FFD1CECBFF989898FFD1936D00FCF5EE00FBF3EB00FBF2
      EA00FCF3EC00FCF4ED00E4BA9100FFF7F000FFE7D500FDE7D600FDE6D400FCE4
      D000FBE3CB00FADCC200FEF3E800CC865700D0DBFE0089A5FB0092A5FC0083A5
      FC0057E9FA005BE9FD003DC2FA005E76BB00FFDF9E00F1D59100EC9E4D00897C
      2C0028C1620038C3620034A74F00346B2B0000000000FFFFFFFF000000005E56
      47FFAFA593FFB0A694FFB4AA98FF6E6555FF6E6555FFB4AA98FFB0A694FFAFA5
      93FF5E5647FF00000000FFFFFFFF000000000000000000000000A24300FFC269
      0CFFC26A0FFFAA4C00FFDDDDDDFF000000FF404040FFF3F3F3FFF6F6F6FFF7F7
      F7FFF7F7F7FFF7F7F7FFF6F6F6FF8B8682FFD5926900F1F3EA00FFECDE00FFED
      E000FFECDE00FFEADC00E4BB9100FFF7F200FEE7D500FEE7D500FDE5D100FAE0
      CA00F9DEC400F7D9BC00FDF2E700CC875800FFFFFF00FFFFFF00FFFFFF00FAFE
      FF0053EBF90059EEFC003CC7FA006077BC00FFDD9700F3E3B300F5BF88009489
      31001FC1610037C5630034AA5200346F2D00FFFFFFFFDBD9D5FF645B4BFF9E94
      83FFB0A694FFB4AA98FF665D4DFFDFDDDAFFDFDDDAFF665D4DFFB4AA98FFB0A6
      94FF9E9483FF645B4BFFDAD8D5FFFFFFFFFF0000000000000000F0F0F0FF9D3E
      01FFC77013FFB4B4B4FFEBEBEBFF000000FF404040FFEEEEEEFFF0F0F0FFF3F3
      F3FFF4F4F4FFF3F3F3FFEFEFEFFF8B8682FFD3956A00FCF6F000FFECDE00FFED
      E000FFECDE00FFEADC00E4BB9200FEF7F100FCE5D200FCE4D100FBE2CC00F9DD
      C400F6D7BB00F3D1AF00FAEFE400CC875900FFFFFF00FFFFFF00FFFFFF00EAFD
      FF0057E4F8005DF2FB0041C7F7005D72C100FFE09F00F7E0B300F4BD8500B89C
      4A0058D6930029C25F0032AC540035732F0000000000625949FFB1A795FFB0A6
      94FFB0A694FF6F6655FFDCDAD6FF0000000000000000DCDAD6FF6F6655FFB0A6
      94FFB0A694FFB1A795FF625949FF000000000000000000000000F3F3F3FF993A
      01FFC56E11FFB8B8B8FFEEEEEEFF000000FF404040FFEAEAEAFFEBEBEBFFECEC
      ECFFEAEAEAFFE9E9E9FFE6E6E6FF8B8783FFD1956A00FFF8F300FFECDE00FFED
      E000FFECDE00FFEADC00E4BB9200FEF6F000FCE2CD00FCE3CD00FADFC800F7D9
      BC00F5E9DD00FAF3EB00FBF8F300CA835400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007CF0FF004EEAFF0042EFFF0081D7E200FFDBA200F7E4BA00F5C58B00B7A0
      4A0089E4BF0061D6910025AC4C00367A330000000000625949FFB1A795FFB0A6
      94FFB0A694FF6F6655FFDCDAD6FF0000000000000000DCDAD6FF6F6655FFB0A6
      94FFB0A694FFB1A795FF625949FF000000000000000000000000F5F5F5FF993A
      01FFC56E11FFBBBBBBFFF2F2F2FF000000FF404040FFE9E9E9FFE7E7E7FFE5E5
      E5FFE4E4E4FFE0E0E0FFDDDDDDFF8B8683FFD2966B00FFF8F200FFEADA00FDEA
      DB00FDE9DA00FCE7D600E4BB9300FEF5ED00FCDEC500FBE0C700F9DCC200F5D3
      B400FEF9F300FAE2C400ECC19300DCB49600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EAF8F000FFDEA500F6E7BD00F8CA8F00BAA5
      4D007AE1B60091E7BB004EBB74002F7C2D00FFFFFFFFDBD9D5FF645B4BFF9E94
      83FFB0A694FFB4AA98FF665D4DFFDFDDDAFFDFDEDAFF665D4DFFB4AA98FFB0A6
      94FF9E9483FF645B4BFFDAD8D5FFFFFFFFFF0000000000000000F6F6F6FF993A
      01FFC56F13FFB8B8B8FFF6F6F6FF000000FF404040FFEAEAEAFFE6E6E6FFA6A6
      A6FFDEDEDEFFDBDBDBFFD4D4D4FF8B8784FFD2976C00FFF8F400FEEADA00FEEA
      DA00FDE8D700FBE4D100E5BE9600FFFFFE00FDF3E900FDF3EA00FCF2E800FAEF
      E300FAF2E700EABB8800DDA98800FBF8F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF5E300F8E3B900FAEBC800FACD9400BFA9
      4A0076E2B6008BE3B8007ACD9A003186340000000000FFFFFFFF000000005E56
      47FFAFA593FFB0A694FFB4AA98FF6E6555FF6E6555FFB4AA98FFB0A694FFAFA5
      93FF5E5747FF00000000FFFFFFFF0000000000000000BBBBBBFFF8F8F8FF993B
      03FF000000FF848484FFC8C8C8FF000000FF414141FFC6C6C6FFB4B4B4FF7171
      71FFDDDDDDFFD6D6D6FFD3D3D3FF8B8783FFD2976D00FEF8F300FCE8D800FCE7
      D700FCE6D300FAE1CC00EAC39D00E6BF9600E4BB9200E4BB9200D3A47200D2A1
      7200D3A57600E2BDA200FCFAF80000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFCF600F9E2B100F8E5B800FFDDA600D1C7
      7A0074DEB20089E4BA0071CC9900338D360000000000FFFFFFFF9E988EFF7F75
      65FFB0A694FFAFA593FFB0A694FFB0A694FFB0A694FFB0A694FFAFA593FFB0A6
      94FF7F7565FF9E988EFFFFFFFFFF00000000BD8C80FFB2B2B2FFF4F4F4FF9A3D
      05FF000000FF000000FF010101FF000000FF000000FF000000FF000000FFC2C2
      C2FFE3E3E3FFDDDDDDFFD6D6D6FF8C8883FFD2976D00FEF7F200FCE6D300FCE7
      D300FBE3CF00F8DEC500F6ECE100FBF5EE00FCF9F500D4A47A00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDF800FDF3DD00FFF7E800DFF0
      D90071DDB20087E6BE0073D09C0035943B0000000000FFFFFFFFD6D3CFFF6057
      47FF7F7565FF5E5647FF9E9483FFB0A694FFB0A694FF9E9483FF5E5647FF7F75
      64FF605747FFD6D3CFFFFFFFFFFF00000000A25E49FF986C61FFAFAFAFFF9A3E
      07FFDAA36BFFAFAFAFFFAAA3A1FFB25707FFE7E7E7FFF6F6F6FFF3F3F3FFEEEE
      EEFFE9E9E9FFE3E3E3FFDDDDDDFF999491FFD3986F00FEF6EF00FCE2CD00FCE4
      CE00FAE1CA00F6D9BE00FEFAF500FBE6CC00EEC9A100E1BEA300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DAF7
      EB0078DFB30086E8BE0072D49F00359C4300000000000000000000000000D6D4
      D0FF9C968CFFFDFDFCFF645B4BFFB1A795FFB1A795FF645B4BFFFDFDFCFF9D97
      8DFFD6D4D0FF000000000000000000000000B57F72FFC57D3AFFC37832FFC377
      32FFC47A36FFC37731FFC57D3AFFA04305FFF5F5F5FFF3F3F3FFF1F1F1FFEEEE
      EEFFE9E9E9FFE3E3E3FFC3C2C1FFF7F5F5FFD49B740000000000FDF5EC00FDF5
      ED00FCF4EB00FBF1E700FBF4EA00EDC49700E2B49700FCF9F700000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CBF4
      E40088E1B90091EAC60079D59F002C9B32000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFD9D6D2FF625949FF625949FFD9D6D2FFFFFFFFFFFFFF
      FFFF00000000000000000000000000000000000000000000000000000000FCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFF0000000000000000DAA68400D69D7600D3976D00D299
      6E00D3996E00D2986F00D49A7000E6C5AD00FDFAF90000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9FE
      FC008EE8CE0077E5C80077E6C6005ACB8B000000000000000000000000000000
      00000000000000000000FEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFF000000000000
      00000000000000000000000000000000000000002C0001011E006C6C94007171
      98008383A80079799F007070980056568100454572003F3F6B0021214D000909
      2D00070729000B0B30000A0A2F000707380000002C0001011E006C6C94007171
      98008383A80079799F007070980056568100454572003F3F6B0021214D000909
      2D00070729000B0B30000A0A2F0007073800DFC692FFD8B773FFD8B773FFD8B7
      73FFD8B773FFD8B773FFD8B773FFD8B773FFD8B773FFD8B773FFD8B773FF9CC7
      75FFD8B773FFD8B773FFF9F4EBFF00000000000000000000000000000000FEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000FCFCFCFF00000000000000000000000000001E007E7E8E00E3E3E900F4F4
      F700EDEDF000C3C3CE00C8C8D3009797AA008C8CA000707087005F5F76005454
      6B0036364B00434359007D7D8F007C7CA20000001E007E7E8E00E3E3E900F4F4
      F700EDEDF000C3C3CE00C8C8D3009797AA008C8CA000707087005F5F76005454
      6B0036364B00434359007D7D8F007C7CA200D9A53AFF2E9DE3FF2E9DE3FF2E9D
      E3FF2E9DE3FF2E9DE3FF2E9DE3FF2E9DE3FF2E9DE3FF2E9DE3FF29A6ABFF37D4
      40FF299ECCFF319DE0FFD7A43AFF0000000000000000000000004040C0FF3737
      BCFFFBFBFBFF000000000000000000000000000000000000000000000000BABA
      DFFF3E3EF0FFE5E5E6FF000000000000000020204700E0E0E700F5F5F700F3F3
      F600F9F9FA00EDEDF100B6B6C4007F7F94008080950056566D00414157004545
      5B0044445B0053536B00A8A8B8009999BA0020204700E0E0E700F5F5F700F3F3
      F600F9F9FA00EDEDF100B6B6C4007F7F94008080950056566D00414157004545
      5B0044445B0053536B00A8A8B8009999BA00D9A53AFFFFFFFFFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECEDECFF36D33FFF37D4
      40FF36D23FFFFEFDFBFFD9A53AFF00000000000000003F3FBFFF0606B6FF0808
      B9FF3838BFFFFBFBFBFF00000000000000000000000000000000BABADFFF3333
      E9FF3B3BF2FF4646F9FFE5E5E6FF000000008686AB00F6F6F800F4F4F700F4F4
      F700ECECF000ECECF000A8A8B800505067002E2E4200232336001C1C2D001616
      25002525380039394F009393A6009191B4008686AB00F6F6F800F4F4F700F4F4
      F700ECECF000ECECF000A8A8B800505067002E2E4200232336001C1C2D001616
      25002525380039394F009393A6009191B400D9A53AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DD045FF37D440FF37D4
      40FF37D440FF58D35DFFD9A53AFF000000008888D5FF0404B4FF0606B6FF0808
      B9FF0B0BBDFF3A3AC0FFFBFBFBFF0000000000000000B9B9DFFF2A2ADFFF3131
      E6FF3737EDFF3A3AF1FF3D3DEEFFFEFEFEFF8C8CAF00E0E0E600BDBDC900E5E5
      EA009494A6004D4D630038384E004E4E6400404057003A3A500044445B003535
      4B0029293C0029293D00707085007E7EA3008C8CAF00E0E0E600BDBDC900E5E5
      EA009494A6004D4D630038384E004E4E6400404057003A3A500044445B003535
      4B0029293C0029293D00707085007E7EA300D9A53AFFFFFFFFFFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FF8CD990FF37D440FF37D440FF37D4
      40FF37D440FF37D440FFAFAC3BFF00000000000000005858CCFF0505B6FF0808
      B9FF0B0BBCFF0E0EC0FF3C3CC2FFFBFBFBFFB9B9DEFF2121D5FF2626DBFF2C2C
      E1FF3030E5FF3333E8FFD9D9E9FF000000007D7DA300AEAEBD00ADADBC001C1C
      2B008181930069697E0067677D00E3E3E900E6E6EC00E9E9ED00B8B8C6007B7B
      910038384E002222350053536A005A5A84007D7DA300AEAEBD00ADADBC001C1C
      2B008181930069697E0067677D00E3E3E900E6E6EC00E9E9ED00B8B8C6007B7B
      910038384E002222350053536A005A5A8400D9A53AFFFFFFFFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFD6DED7FF37D440FF37D440FF37D440FF37D4
      40FF37D440FF37D440FF36D33FFF0000000000000000000000005959CCFF0707
      B8FF0A0ABBFF0D0DBEFF1010C2FF3B3BC3FF1919CCFF1E1ED1FF2222D6FF2626
      DAFF2A2ADEFFD9D9E9FF000000000000000041416E0038384E0010101A006F6F
      830068687D0000FF00002626370083839800F9F9FB00F8F8F900BABAC8008484
      9800313146001C1C2D003333470040406C0041416E0038384E0010101A006F6F
      830068687D000000FF002626370083839800F9F9FB00F8F8F900BABAC8008484
      9800313146001C1C2D003333470040406C00D9A53AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF58D860FF56DA5DFF3CD545FF37D440FF37D4
      40FF37D440FF39D33FFF4DCD3FFF76DD7CFF0000000000000000000000005B5B
      CDFF0808B9FF0B0BBDFF0F0FC0FF1212C4FF1616C8FF1A1ACDFF1D1DD1FF2121
      D4FFD9D9E9FF0000000000000000000000001B1B45000505090003030500DADA
      E10054546A0000FF000000FF00007F7F9400F1F1F400F7F7F900D0D0DA006363
      7A0012121F001A1A2A003B3B5100373764001B1B45000505090003030500DADA
      E10054546A000000FF000000FF007F7F9400F1F1F400F7F7F900D0D0DA006363
      7A0012121F001A1A2A003B3B510037376400D9A53AFFD9A53AFFD9A53AFFD9A5
      3AFFD9A53AFFD9A53AFFD9A53AFFD9A53AFFD9A53AFF55CB3EFF37D440FF37D4
      40FF37D440FF46CF3FFFD9A53AFF000000000000000000000000000000000000
      00005B5BCDFF0A0ABBFF0C0CBEFF1010C1FF1313C5FF1616C8FF1919CCFFD8D8
      E9FF000000000000000000000000000000001919420002020400040407009191
      A3005959700000FF000000FF00006D6D8400E1E1E700F6F6F8009E9EAF001818
      25000E0E19001F1F310032324800282854001919420002020400040407009191
      A300595970000000FF000000FF006D6D8400E1E1E700F6F6F8009E9EAF001818
      25000E0E19001F1F31003232480028285400D9A53AFFD9A53AFFD9A53AFFD9A5
      3AFFD9A53AFFD9A53AFFD9A53AFFD9A53AFFD9A53AFF55CB3EFF37D440FF37D4
      40FF37D440FF46CF3FFFD9A53AFF000000000000000000000000000000000000
      0000B7B7DEFF0808B9FF0A0ABCFF0D0DBEFF0F0FC1FF1212C4FF3D3DC3FFFBFB
      FBFF0000000000000000000000000000000013133B0001010200000000000202
      04003B3B4A002E2E42003A3A4F009797A900C5C5D0009393A5002A2A3B000B0B
      13001717260030304500313146003C3C680013133B0001010200000000000202
      04003B3B4A002E2E42003A3A4F009797A900C5C5D0009393A5002A2A3B000B0B
      13001717260030304500313146003C3C6800D9A53AFFD9A53AFFD9A53AFFD9A5
      3AFFD9A53AFFD9A53AFFD9A53AFFD9A53AFFD9A53AFF55CB3EFF37D440FF37D4
      40FF37D440FF46CF3FFFD9A53AFF00000000000000000000000000000000B9B9
      DEFF3333C4FF1919BDFF0808B9FF0A0ABBFF0C0CBEFF0E0EC0FF1010C2FF3C3C
      C2FFFBFBFBFF0000000000000000000000002B2B570018182700030305000303
      06000A0A120005050800040408001717210008080D000505080007070D001515
      230025253800313146003C3C5300383865002B2B570018182700030305000303
      06000A0A120005050800040408001717210008080D000505080007070D001515
      230025253800313146003C3C530038386500D9A53AFFD9A53AFFD9A53AFFD9A5
      3AFFD9A53AFFD9A53AFFD9A53AFFD9A53AFFD9A53AFF55CB3EFF37D440FF37D4
      40FF37D440FF46CF3FFFD9A53AFF000000000000000000000000BABADEFF3737
      C4FF3535C4FF3232C4FF3131C4FF2F2FC5FF2424C3FF1B1BC1FF1616C1FF1616
      C2FF4242C2FFFBFBFBFF00000000000000003333600048485F003F3F55002525
      37001B1B2A001818260013131F0028283A002C2C400039394F0027273A002121
      33003B3B510041415800414158002D2D59003333600048485F003F3F55002525
      37001B1B2A001818260013131F0028283A002C2C400039394F0027273A002121
      33003B3B510041415800414158002D2D5900D9A53AFFB58A30FFB58A30FFB58A
      30FFB58A30FFB58A30FFB58A30FFB58A30FFB58A30FF4EC63CFF37D440FF37D4
      40FF37D440FF46CF3FFFD9A53AFF0000000000000000BABADFFF3D3DC5FF3A3A
      C4FF3737C4FF3535C4FF3333C4FFD8D8E9FF6868D1FF2F2FC5FF2E2EC6FF2D2D
      C6FF2D2DC7FF4C4CC4FFFBFBFBFF000000001F1F4B0082829700626279009999
      AB00C9C9D400C4C4CF00A9A9B9007F7F950044445B00525269004E4E64004141
      570029293D0029293D0041415800373764001F1F4B0082829700626279009999
      AB00C9C9D400C4C4CF00A9A9B9007F7F950044445B00525269004E4E64004141
      570029293D0029293D004141580037376400D9A53AFFB58A30FFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFF76E07CFF37D440FF37D4
      40FF37D440FF5CC93EFFE1B968FF00000000C1C1E4FF4343C6FF4040C6FF3D3D
      C5FF3A3AC4FF3838C4FFD8D8E9FF00000000000000006969D1FF3030C4FF2F2F
      C5FF2F2FC5FF2F2FC5FF4C4CC3FF0000000030305C0081819600ADADBC00BABA
      C800C8C8D300BABAC700B5B5C300A4A4B40064647A005D5D7300414157002D2D
      4200212133001717250047475E003F3F6B0030305C0081819600ADADBC00BABA
      C800C8C8D300BABAC700B5B5C300A4A4B40064647A005D5D7300414157002D2D
      4200212133001717250047475E003F3F6B00D9A53AFFB58A30FFFAFAFAFFB58A
      30FFB58A30FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFB58A30FFD9A5
      3AFFD9A53AFFD9A53AFFFDFCFBFF00000000E8E8F5FF5B5BCEFF4242C6FF4040
      C6FF3D3DC5FFD8D8E9FF000000000000000000000000000000006969D1FF3232
      C4FF3131C4FF3131C4FF7373CCFF000000001D1D48004C4C6300B9B9C700CDCD
      D700C6C6D100BDBDCA00CFCFD900A1A1B20046465D0033334800232335001212
      1F001C1C2D002B2B3E0048485F0031315D001D1D48004C4C6300B9B9C700CDCD
      D700C6C6D100BDBDCA00CFCFD900A1A1B20046465D0033334800232335001212
      1F001C1C2D002B2B3E0048485F0031315D00D9A53AFFB58A30FFFAFAFAFFB58A
      30FFB58A30FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFB58A30FFD9A5
      3AFFD9A53AFFF8F0DFFF000000000000000000000000E8E8F5FF5B5BCEFF4343
      C6FFD8D8E9FF0000000000000000000000000000000000000000000000006A6A
      D1FF3434C4FF7373CCFF000000000000000009093B0021214B005B5B85008D8D
      B0008A8AAE0077779E0066668F0037376300111138000707290007072A000C0C
      320020204C0030305D003636620024245B0009093B0021214B005B5B85008D8D
      B0008A8AAE0077779E0066668F0037376300111138000707290007072A000C0C
      320020204C0030305D003636620024245B00D9A53AFFB58A30FFFAFAFAFFBC96
      46FFBC9646FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFB58A30FFD9A5
      3AFFF3E4C4FF0000000000000000000000000000000000000000E8E8F5FFDDDD
      EEFF000000000000000000000000000000000000000000000000000000000000
      0000A5A5DDFF000000000000000000000000424D3E000000000000003E000000
      2800000040000000B00000000100010000000000800500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F607F83FFFFF0000E013E00FFFFF0000
      C001C007000000000005800300000000000287810001000080000F0180010000
      80000E00C003000000011C10C003000000011830E007000080001070E0070000
      800000F1F00F0000000201E1F01F000080008381F81F00000002C003FC3F0000
      9004E007FC3F0000D601F01FFE7F0000E8030000C007F01FE00100004009C007
      C00000004001C003800000000002800100010000800000010000000080000000
      0000000080000000000000008000000000000000800000000000000080000000
      0000000080000000000100008000000080000000000200010003000000030001
      0007000000078007900700008FC7E00FF01FFFFFF587FFFFE007F80FA0138001
      E007F007E0018001C007E007C0008001C003C183000280018003C38380008001
      8001838300018001800183810001800180018381000180018001838300018001
      80018383000180018003818380008001C003C18300028001E007C00700078001
      F01FE00FC00D8003FFFFF01FC02FFFFFF597F4878FFFF83FA0139007223FE00F
      E0012003300FC003C000C0002007800300028000000300018000000081010001
      0001000183810000000100018001000000010001800100000001000180010000
      0001000181830000800080008003000100021402C00780010007180BE00D8003
      C0099903F81DC007C82FFF87FF81F00FFD1FE00FFFFFF01FE05FC003F00FC007
      C80F8001E0078003C00B0001C0038001A003000080010001A003000080010000
      8005000000010000C00500000001000040010000000100000003000000010000
      00030000000100000003000080010000000300018003000140018001C0078003
      60118003E00FC007E003E007F83FE00FFFFFF800F81FF487807FF800E0079007
      803FF800C0032001000700008001C0000001000080018002C000000100000000
      C000000100000001800000010000000180008001000000018000800100000001
      800080010000000180008001800180008000803F800100028001803FC0030007
      C001803FE007C00F787FFFFFF81FC02FF18FFC1FFFFF0000E007800087E13FFC
      C003000007C19C198001000007C18009000000018001C2430000F83F0001C423
      8001FC3F0641E0078001F80F0641E0078001E003C771F3CF80008000FC1FF1CF
      00030000F81FF99F00230000FC3FF89F801F0001FC1FFC3FC0FF0003FC1FFC3F
      E07FE01FF81FFE7FF0FFFFFFF81FFE7F80010000FFFFFFFF80010000FF9FFFF1
      81810000FC07FFE1800100009007FFC18421E0078007FF838421C0038003F187
      8001C4038003C00FC183C403C003803FE007C403C003003FF00FC4C3C001001F
      8C31C423C001001F8421C403E001001F87E1C003E011003F8181C003E07F803F
      E007FFFFF8FFC07FF00FFFFFFFFFE0FFC00FFC008000FC3FC007FC000000F00F
      C003FC000000E007C001FC0000008001C000000000008001C00000000000A005
      C000000000000000C000000000008181C000000000008181C000000000000000
      C00000000000A00580000001000080010000003F000080010000003F0000E007
      0000403F0000F00FE003007F0000FC3F000000000001EFF7000000000001C7E3
      00000000000183C100000000000101800000000000018001000000000001C003
      000000000000E007000000000001F00F000000000001F00F000000000001E007
      000000000001C0030000000000018001000000000001018100000000000103C1
      00000000000387E3000000000007CFF700000000000000000000000000000000
      000000000000}
  end
  object Timer3: TTimer
    Interval = 2500
    OnTimer = Timer3Timer
    Left = 128
    Top = 64
  end
end
