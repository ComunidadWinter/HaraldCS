VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{33101C00-75C3-11CF-A8A0-444553540000}#1.0#0"; "CSWSK32.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmMain 
   BackColor       =   &H80000007&
   BorderStyle     =   0  'None
   ClientHeight    =   9045
   ClientLeft      =   360
   ClientTop       =   300
   ClientWidth     =   12000
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00000000&
   Icon            =   "frmMain.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   Picture         =   "frmMain.frx":3482
   ScaleHeight     =   603
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   800
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin SocketWrenchCtrl.Socket Socket1 
      Left            =   3240
      Top             =   2520
      _Version        =   65536
      _ExtentX        =   741
      _ExtentY        =   741
      _StockProps     =   0
      AutoResolve     =   0   'False
      Backlog         =   1
      Binary          =   -1  'True
      Blocking        =   0   'False
      Broadcast       =   0   'False
      BufferSize      =   10240
      HostAddress     =   ""
      HostFile        =   ""
      HostName        =   ""
      InLine          =   0   'False
      Interval        =   0
      KeepAlive       =   0   'False
      Library         =   ""
      Linger          =   0
      LocalPort       =   0
      LocalService    =   ""
      Protocol        =   0
      RemotePort      =   0
      RemoteService   =   ""
      ReuseAddress    =   0   'False
      Route           =   -1  'True
      Timeout         =   10000
      Type            =   1
      Urgent          =   0   'False
   End
   Begin VB.PictureBox picSM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   450
      Index           =   3
      Left            =   11325
      MousePointer    =   99  'Custom
      ScaleHeight     =   450
      ScaleWidth      =   420
      TabIndex        =   30
      Top             =   8445
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.PictureBox picSM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   450
      Index           =   2
      Left            =   10950
      MousePointer    =   99  'Custom
      ScaleHeight     =   450
      ScaleWidth      =   420
      TabIndex        =   29
      Top             =   8445
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.PictureBox picSM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   450
      Index           =   1
      Left            =   10575
      MousePointer    =   99  'Custom
      ScaleHeight     =   450
      ScaleWidth      =   420
      TabIndex        =   28
      Top             =   8445
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.PictureBox picSM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   450
      Index           =   0
      Left            =   10200
      MousePointer    =   99  'Custom
      ScaleHeight     =   30
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   28
      TabIndex        =   27
      Top             =   8445
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.PictureBox picInv 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      CausesValidation=   0   'False
      ClipControls    =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1920
      Left            =   8880
      ScaleHeight     =   128
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   160
      TabIndex        =   16
      Top             =   2760
      Width           =   2400
   End
   Begin MSWinsockLib.Winsock Winsock2 
      Left            =   3720
      Top             =   2520
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox SendTxt 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   270
      Left            =   90
      MaxLength       =   160
      MultiLine       =   -1  'True
      TabIndex        =   2
      TabStop         =   0   'False
      ToolTipText     =   "Chat"
      Top             =   1950
      Visible         =   0   'False
      Width           =   8130
   End
   Begin VB.Timer macrotrabajo 
      Enabled         =   0   'False
      Left            =   7080
      Top             =   2520
   End
   Begin VB.Timer TrainingMacro 
      Enabled         =   0   'False
      Interval        =   3121
      Left            =   6600
      Top             =   2520
   End
   Begin VB.TextBox SendCMSTXT 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   315
      Left            =   0
      MaxLength       =   160
      MultiLine       =   -1  'True
      TabIndex        =   1
      TabStop         =   0   'False
      ToolTipText     =   "Chat"
      Top             =   8880
      Visible         =   0   'False
      Width           =   570
   End
   Begin VB.Timer Macro 
      Interval        =   750
      Left            =   5760
      Top             =   2520
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   2880
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Timer Second 
      Enabled         =   0   'False
      Interval        =   1050
      Left            =   4920
      Top             =   2520
   End
   Begin VB.Timer SpoofCheck 
      Enabled         =   0   'False
      Interval        =   60000
      Left            =   4200
      Top             =   2520
   End
   Begin RichTextLib.RichTextBox RecTxt 
      Height          =   1410
      Left            =   90
      TabIndex        =   0
      TabStop         =   0   'False
      ToolTipText     =   "Mensajes del servidor"
      Top             =   480
      Width           =   8130
      _ExtentX        =   14340
      _ExtentY        =   2487
      _Version        =   393217
      BackColor       =   0
      Enabled         =   -1  'True
      ReadOnly        =   -1  'True
      ScrollBars      =   2
      DisableNoScroll =   -1  'True
      TextRTF         =   $"frmMain.frx":162DC4
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.ListBox hlst 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   1980
      Left            =   8880
      TabIndex        =   17
      TabStop         =   0   'False
      Top             =   2760
      Visible         =   0   'False
      Width           =   2445
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Cambiar clase"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   8400
      TabIndex        =   35
      Top             =   6600
      Width           =   3495
   End
   Begin VB.Image imgRank 
      Height          =   375
      Left            =   10560
      Top             =   7800
      Width           =   1335
   End
   Begin VB.Image cmdMoverHechi 
      Height          =   255
      Index           =   0
      Left            =   11400
      Top             =   3000
      Width           =   255
   End
   Begin VB.Image cmdMoverHechi 
      Height          =   375
      Index           =   1
      Left            =   11400
      Top             =   2640
      Width           =   255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0/0"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   4275
      TabIndex        =   34
      Top             =   8640
      Width           =   855
   End
   Begin VB.Image imgEstadisticas 
      Height          =   360
      Left            =   10560
      Top             =   7320
      Width           =   1305
   End
   Begin VB.Image imgOpciones 
      Height          =   330
      Left            =   10560
      Top             =   6840
      Width           =   1305
   End
   Begin VB.Image imgAsignarSkill 
      Height          =   450
      Left            =   9120
      MousePointer    =   99  'Custom
      Top             =   360
      Visible         =   0   'False
      Width           =   450
   End
   Begin VB.Label lblDropGold 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   10560
      MousePointer    =   99  'Custom
      TabIndex        =   33
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label lblMinimizar 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   10080
      MousePointer    =   99  'Custom
      TabIndex        =   32
      Top             =   120
      Width           =   855
   End
   Begin VB.Label lblCerrar 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   11160
      MousePointer    =   99  'Custom
      TabIndex        =   31
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Left            =   10080
      MouseIcon       =   "frmMain.frx":162E42
      MousePointer    =   99  'Custom
      TabIndex        =   19
      Top             =   1800
      Width           =   1605
   End
   Begin VB.Label lblFPS 
      BackStyle       =   0  'Transparent
      Caption         =   "101"
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   5940
      TabIndex        =   26
      Top             =   165
      Width           =   555
   End
   Begin VB.Image imgInvScrollDown 
      Height          =   795
      Left            =   10020
      Top             =   5595
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.Image imgInvScrollUp 
      Height          =   1065
      Left            =   10005
      Top             =   4545
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.Image cmdInfo 
      Height          =   525
      Left            =   10440
      MouseIcon       =   "frmMain.frx":162F94
      MousePointer    =   99  'Custom
      Top             =   4920
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Label lblMapName 
      BackStyle       =   0  'Transparent
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   8700
      TabIndex        =   25
      Top             =   8445
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Image xz 
      Height          =   255
      Index           =   0
      Left            =   9360
      Top             =   0
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Image xzz 
      Height          =   195
      Index           =   1
      Left            =   9120
      Top             =   0
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Label lblName 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "test"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   9000
      TabIndex        =   24
      Top             =   840
      Width           =   2625
   End
   Begin VB.Label lblLvl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "47"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   8700
      TabIndex        =   23
      Top             =   930
      Width           =   270
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Nivel"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   225
      Left            =   9225
      TabIndex        =   22
      Top             =   1140
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Label lblPorcLvl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "33.33%"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   225
      Left            =   9225
      TabIndex        =   21
      Top             =   1320
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Label lblExp 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Exp: 999999999/99999999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   225
      Left            =   9225
      TabIndex        =   20
      Top             =   1500
      Visible         =   0   'False
      Width           =   2010
   End
   Begin VB.Image CmdLanzar 
      Height          =   615
      Left            =   8880
      MouseIcon       =   "frmMain.frx":1630E6
      MousePointer    =   99  'Custom
      Top             =   4920
      Visible         =   0   'False
      Width           =   1515
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   8520
      MouseIcon       =   "frmMain.frx":163238
      MousePointer    =   99  'Custom
      TabIndex        =   18
      Top             =   1800
      Width           =   1515
   End
   Begin VB.Label GldLbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   210
      Left            =   10920
      TabIndex        =   15
      Top             =   6120
      Width           =   90
   End
   Begin VB.Label lblStrg 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   210
      Left            =   9465
      TabIndex        =   9
      Top             =   6150
      Width           =   210
   End
   Begin VB.Label lblDext 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   210
      Left            =   8700
      TabIndex        =   8
      Top             =   6150
      Width           =   210
   End
   Begin VB.Label Coord 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000 X:00 Y: 00"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   8700
      TabIndex        =   7
      Top             =   8670
      Width           =   1335
   End
   Begin VB.Label lblWeapon 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000/000"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   5640
      TabIndex        =   6
      Top             =   8640
      Width           =   855
   End
   Begin VB.Label lblShielder 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00/00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   3015
      TabIndex        =   5
      Top             =   8640
      Width           =   855
   End
   Begin VB.Label lblHelm 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00/00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   1695
      TabIndex        =   4
      Top             =   8640
      Width           =   855
   End
   Begin VB.Label lblArmor 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00/00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   420
      TabIndex        =   3
      Top             =   8640
      Width           =   855
   End
   Begin VB.Image imgScroll 
      Height          =   240
      Index           =   1000
      Left            =   11400
      MousePointer    =   99  'Custom
      Top             =   3600
      Width           =   225
   End
   Begin VB.Shape MainViewShp 
      BorderColor     =   &H00404040&
      Height          =   6240
      Left            =   75
      Top             =   2280
      Visible         =   0   'False
      Width           =   8160
   End
   Begin VB.Image InvEqu 
      Height          =   3870
      Left            =   8475
      Top             =   1755
      Width           =   3210
   End
   Begin VB.Label lblMana 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C000&
      BackStyle       =   0  'Transparent
      Caption         =   "9999/9999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8580
      TabIndex        =   11
      Top             =   7440
      Width           =   1095
   End
   Begin VB.Label lblEnergia 
      Alignment       =   2  'Center
      BackColor       =   &H0000C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "999/999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8760
      TabIndex        =   10
      Top             =   6780
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label lblVida 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "999/999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8580
      TabIndex        =   12
      Top             =   7065
      Width           =   1095
   End
   Begin VB.Label lblHambre 
      Alignment       =   2  'Center
      BackColor       =   &H00004000&
      BackStyle       =   0  'Transparent
      Caption         =   "999/999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8760
      TabIndex        =   13
      Top             =   7800
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label lblSed 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      BackStyle       =   0  'Transparent
      Caption         =   "999/999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8760
      TabIndex        =   14
      Top             =   8130
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Shape shpEnergia 
      FillStyle       =   0  'Solid
      Height          =   180
      Left            =   8760
      Top             =   6795
      Visible         =   0   'False
      Width           =   1125
   End
   Begin VB.Shape shpMana 
      FillStyle       =   0  'Solid
      Height          =   105
      Left            =   8400
      Top             =   7470
      Width           =   1425
   End
   Begin VB.Shape shpVida 
      FillStyle       =   0  'Solid
      Height          =   105
      Left            =   8400
      Top             =   7110
      Width           =   1425
   End
   Begin VB.Shape shpHambre 
      FillStyle       =   0  'Solid
      Height          =   180
      Left            =   8760
      Top             =   7815
      Visible         =   0   'False
      Width           =   1125
   End
   Begin VB.Shape shpSed 
      FillStyle       =   0  'Solid
      Height          =   180
      Left            =   8760
      Top             =   8160
      Visible         =   0   'False
      Width           =   1125
   End
   Begin VB.Menu mnuObj 
      Caption         =   "Objeto"
      Visible         =   0   'False
      Begin VB.Menu mnuTirar 
         Caption         =   "Tirar"
      End
      Begin VB.Menu mnuUsar 
         Caption         =   "Usar"
      End
      Begin VB.Menu mnuEquipar 
         Caption         =   "Equipar"
      End
   End
   Begin VB.Menu mnuNpc 
      Caption         =   "NPC"
      Visible         =   0   'False
      Begin VB.Menu mnuNpcDesc 
         Caption         =   "Descripcion"
      End
      Begin VB.Menu mnuNpcComerciar 
         Caption         =   "Comerciar"
         Visible         =   0   'False
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'--------------------------------------------------------------------------------
'    Component  : frmMain
'    Project    : ARGENTUM
'
'    Description: [type_description_here]
'
'    Modified   :
'--------------------------------------------------------------------------------
'Argentum Online 0.11.6
'
'Copyright (C) 2002 M�rquez Pablo Ignacio
'Copyright (C) 2002 Otto Perez
'Copyright (C) 2002 Aaron Perkins
'Copyright (C) 2002 Mat�as Fernando Peque�o
'
'This program is free software; you can redistribute it and/or modify
'it under the terms of the Affero General Public License;
'either version 1 of the License, or any later version.
'
'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'Affero General Public License for more details.
'
'You should have received a copy of the Affero General Public License
'along with this program; if not, you can find it at http://www.affero.org/oagpl.html
'
'Argentum Online is based on Baronsoft's VB6 Online RPG
'You can contact the original creator of ORE at aaron@baronsoft.com
'for more information about ORE please visit http://www.baronsoft.com/
'
'
'You can contact me at:
'morgolock@speedy.com.ar
'www.geocities.com/gmorgolock
'Calle 3 n�mero 983 piso 7 dto A
'La Plata - Pcia, Buenos Aires - Republica Argentina
'C�digo Postal 1900
'Pablo Ignacio M�rquez

Option Explicit

Public tx As Byte
Public tY As Byte
Public MouseX As Long
Public MouseY As Long
Public MouseBoton As Long
Public MouseShift As Long
Private clicX As Long
Private clicY As Long

Public IsPlaying As Byte

Private clsFormulario As clsFormMovementManager

Private cBotonDiamArriba As clsGraphicalButton
Private cBotonDiamAbajo As clsGraphicalButton
Private cBotonMapa As clsGraphicalButton
Private cBotonGrupo As clsGraphicalButton
Private cBotonOpciones As clsGraphicalButton
Private cBotonEstadisticas As clsGraphicalButton
Private cBotonClanes As clsGraphicalButton
Private cBotonAsignarSkill As clsGraphicalButton

Public LastButtonPressed As clsGraphicalButton

Public picSkillStar As Picture

Dim PuedeMacrear As Boolean

Public WithEvents dragInventory As clsGrapchicalInventory
Attribute dragInventory.VB_VarHelpID = -1

'Usado para controlar que no se dispare el binding de la tecla CTRL cuando se usa CTRL+Tecla.
Dim CtrlMaskOn As Boolean

Public Sub dragInventory_dragDone(ByVal originalSlot As Integer, ByVal newSlot As Integer)
Call Protocol.WriteMoveItem(originalSlot, newSlot, eMoveType.Inventory)
End Sub

Private Sub Form_Load()
    
    If NoRes Then
        ' Handles Form movement (drag and drop).
        Set clsFormulario = New clsFormMovementManager
        clsFormulario.Initialize Me, 120
    End If

    
    InvEqu.Picture = LoadPicture(DirGraficos & "cmdInv.jpg")
    
    Call LoadButtons
    
    Set dragInventory = Inventario
    
    Me.Left = 0
    Me.Top = 0
    
    ' Detect links in console
    EnableURLDetect RecTxt.hwnd, Me.hwnd
    
    CtrlMaskOn = False
End Sub

Private Sub LoadButtons()
    Dim GrhPath As String
    Dim i As Integer
    
    GrhPath = DirGraficos

    Set cBotonDiamArriba = New clsGraphicalButton
    Set cBotonDiamAbajo = New clsGraphicalButton
    Set cBotonGrupo = New clsGraphicalButton
    Set cBotonOpciones = New clsGraphicalButton
    Set cBotonEstadisticas = New clsGraphicalButton
    Set cBotonClanes = New clsGraphicalButton
    Set cBotonAsignarSkill = New clsGraphicalButton
    Set cBotonMapa = New clsGraphicalButton
    
    Set LastButtonPressed = New clsGraphicalButton
    
    
   ' Call cBotonDiamArriba.Initialize(imgInvScrollUp, "", _
                                    GrhPath & "BotonDiamArribaF.bmp", _
                                    GrhPath & "BotonDiamArribaF.bmp", Me)

   ' Call cBotonDiamAbajo.Initialize(imgInvScrollDown, "", _
                                    GrhPath & "BotonDiamAbajoF.bmp", _
                                    GrhPath & "BotonDiamAbajoF.bmp", Me)
    

    Set picSkillStar = LoadPicture(GrhPath & "BotonAsignarSkills.bmp")

    If SkillPoints > 0 Then imgAsignarSkill.Picture = picSkillStar
    
    imgAsignarSkill.MouseIcon = picMouseIcon
    lblDropGold.MouseIcon = picMouseIcon
    lblCerrar.MouseIcon = picMouseIcon
    lblMinimizar.MouseIcon = picMouseIcon
    
    For i = 0 To 3
        picSM(i).MouseIcon = picMouseIcon
    Next i
End Sub

Public Sub LightSkillStar(ByVal bTurnOn As Boolean)
    If bTurnOn Then
        imgAsignarSkill.Picture = picSkillStar
    Else
        Set imgAsignarSkill.Picture = Nothing
    End If
End Sub

Private Sub cmdMoverHechi_Click(Index As Integer)
Call Audio.PlayWave(SND_CLICK)

    If hlst.Visible = True Then
        If hlst.ListIndex = -1 Then Exit Sub
        Dim sTemp As String
    
        Select Case Index
            Case 1 'subir
                If hlst.ListIndex = 0 Then Exit Sub
            Case 0 'bajar
                If hlst.ListIndex = hlst.ListCount - 1 Then Exit Sub
        End Select
    
        Call WriteMoveSpell(Index = 1, hlst.ListIndex + 1)
        
        Select Case Index
            Case 1 'subir
                sTemp = hlst.List(hlst.ListIndex - 1)
                hlst.List(hlst.ListIndex - 1) = hlst.List(hlst.ListIndex)
                hlst.List(hlst.ListIndex) = sTemp
                hlst.ListIndex = hlst.ListIndex - 1
            Case 0 'bajar
                sTemp = hlst.List(hlst.ListIndex + 1)
                hlst.List(hlst.ListIndex + 1) = hlst.List(hlst.ListIndex)
                hlst.List(hlst.ListIndex) = sTemp
                hlst.ListIndex = hlst.ListIndex + 1
        End Select
    End If
End Sub

Public Sub ActivarMacroHechizos()
    If Not hlst.Visible Then
        Call AddtoRichTextBox(frmMain.RecTxt, "Debes tener seleccionado el hechizo para activar el auto-lanzar", 0, 200, 200, False, True, True)
        Exit Sub
    End If
    
    TrainingMacro.Interval = INT_MACRO_HECHIS
    TrainingMacro.Enabled = True
    Call AddtoRichTextBox(frmMain.RecTxt, "Auto lanzar hechizos activado", 0, 200, 200, False, True, True)
    Call ControlSM(eSMType.mSpells, True)
End Sub

Public Sub DesactivarMacroHechizos()
    TrainingMacro.Enabled = False
    Call AddtoRichTextBox(frmMain.RecTxt, "Auto lanzar hechizos desactivado", 0, 150, 150, False, True, True)
    Call ControlSM(eSMType.mSpells, False)
End Sub

Public Sub ControlSM(ByVal Index As Byte, ByVal Mostrar As Boolean)
Dim GrhIndex As Long
Dim SR As RECT
Dim DR As RECT

GrhIndex = GRH_INI_SM + Index + SM_CANT * (CInt(Mostrar) + 1)

With GrhData(GrhIndex)
    SR.Left = .sX
    SR.Right = SR.Left + .pixelWidth
    SR.Top = .sY
    SR.Bottom = SR.Top + .pixelHeight
    
    DR.Left = 0
    DR.Right = .pixelWidth
    DR.Top = 0
    DR.Bottom = .pixelHeight
End With

Call DrawGrhtoHdc(picSM(Index).hdc, GrhIndex, SR, DR)
picSM(Index).Refresh

Select Case Index
    Case eSMType.sResucitation
        If Mostrar Then
            Call AddtoRichTextBox(frmMain.RecTxt, MENSAJE_SEGURO_RESU_ON, 0, 255, 0, True, False, True)
            picSM(Index).ToolTipText = "Seguro de resucitaci�n activado."
        Else
            Call AddtoRichTextBox(frmMain.RecTxt, MENSAJE_SEGURO_RESU_OFF, 255, 0, 0, True, False, True)
            picSM(Index).ToolTipText = "Seguro de resucitaci�n desactivado."
        End If
        
    Case eSMType.sSafemode
        If Mostrar Then
            Call AddtoRichTextBox(frmMain.RecTxt, MENSAJE_SEGURO_ACTIVADO, 0, 255, 0, True, False, True)
            picSM(Index).ToolTipText = "Seguro activado."
        Else
            Call AddtoRichTextBox(frmMain.RecTxt, MENSAJE_SEGURO_DESACTIVADO, 255, 0, 0, True, False, True)
            picSM(Index).ToolTipText = "Seguro desactivado."
        End If
        
    Case eSMType.mSpells
        If Mostrar Then
            picSM(Index).ToolTipText = "Macro de hechizos activado."
        Else
            picSM(Index).ToolTipText = "Macro de hechizos desactivado."
        End If
        
    Case eSMType.mWork
        If Mostrar Then
            picSM(Index).ToolTipText = "Macro de trabajo activado."
        Else
            picSM(Index).ToolTipText = "Macro de trabajo desactivado."
        End If
End Select

SMStatus(Index) = Mostrar
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
'***************************************************
'Autor: Unknown
'Last Modification: 18/11/2010
'18/11/2009: ZaMa - Ahora se pueden poner comandos en los mensajes personalizados (execpto guildchat y privados)
'18/11/2010: Amraphen - Agregu� el handle correspondiente para las nuevas configuraciones de teclas (CTRL+0..9).
'***************************************************
#If SeguridadAlkon Then
    If LOGGING Then Call CheatingDeath.StoreKey(KeyCode, False)
#End If
    
    If (Not SendTxt.Visible) And (Not SendCMSTXT.Visible) Then
    
        'Verificamos si se est� presionando la tecla CTRL.
        If Shift = 2 Then
            If KeyCode >= vbKey0 And KeyCode <= vbKey9 Then
                If KeyCode = vbKey0 Then
                    'Si es CTRL+0 muestro la ventana de configuraci�n de teclas.
                    Call frmCustomKeys.Show(vbModal, Me)
                    
                ElseIf KeyCode >= vbKey1 And KeyCode <= vbKey9 Then
                    'Si es CTRL+1..9 cambio la configuraci�n.
                    If KeyCode - vbKey0 = CustomKeys.CurrentConfig Then Exit Sub
                    
                    CustomKeys.CurrentConfig = KeyCode - vbKey0
                    
                    Dim sMsg As String
                    
                    sMsg = "�Se ha cargado la configuraci�n "
                    If CustomKeys.CurrentConfig = 0 Then
                        sMsg = sMsg & "default"
                    Else
                        sMsg = sMsg & "perzonalizada n�mero " & CStr(CustomKeys.CurrentConfig)
                    End If
                    sMsg = sMsg & "!"

                    Call ShowConsoleMsg(sMsg, 255, 255, 255, True)
                End If
                
                CtrlMaskOn = True
                Exit Sub
            End If
        End If
        
        If KeyCode = vbKeyControl Then
            'Chequeo que no se haya usado un CTRL + tecla antes de disparar las bindings.
            If CtrlMaskOn Then
                CtrlMaskOn = False
                Exit Sub
            End If
        End If
        
        If KeyCode = 27 Then 'ESC
           Call WriteRequestAccountState
           Exit Sub
        End If
        
        'Checks if the key is valid
        If LenB(CustomKeys.ReadableName(KeyCode)) > 0 Then
            Select Case KeyCode
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleMusic)
                    Audio.MusicActivated = Not Audio.MusicActivated
                    
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleSound)
                    Audio.SoundActivated = Not Audio.SoundActivated
                    
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleFxs)
                    Audio.SoundEffectsActivated = Not Audio.SoundEffectsActivated
                
                Case CustomKeys.BindedKey(eKeyType.mKeyGetObject)
                    Call AgarrarItem
                
                Case CustomKeys.BindedKey(eKeyType.mKeyEquipObject)
                    Call EquiparItem
                
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleNames)
                    Nombres = Not Nombres
                
                Case CustomKeys.BindedKey(eKeyType.mKeyTamAnimal)
                    If UserEstado = 1 Then
                        With FontTypes(FontTypeNames.FONTTYPE_INFO)
                            Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
                        End With
                    Else
                        Call WriteWork(eSkill.Domar)
                    End If
                    
                Case CustomKeys.BindedKey(eKeyType.mKeySteal)
                    If UserEstado = 1 Then
                        With FontTypes(FontTypeNames.FONTTYPE_INFO)
                            Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
                        End With
                    Else
                        Call WriteWork(eSkill.Robar)
                    End If
                    
                Case CustomKeys.BindedKey(eKeyType.mKeyHide)
                    If UserEstado = 1 Then
                        With FontTypes(FontTypeNames.FONTTYPE_INFO)
                            Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
                        End With
                    Else
                        Call WriteWork(eSkill.Ocultarse)
                    End If
                                    
                Case CustomKeys.BindedKey(eKeyType.mKeyDropObject)
                    Call TirarItem
                
                Case CustomKeys.BindedKey(eKeyType.mKeyUseObject)
                    If macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
                        
                    If MainTimer.Check(TimersIndex.UseItemWithU) Then
                        Call UsarItem
                    End If
                
                Case CustomKeys.BindedKey(eKeyType.mKeyRequestRefresh)
                    If MainTimer.Check(TimersIndex.SendRPU) Then
                        Call WriteRequestPositionUpdate
                        Beep
                    End If
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleSafeMode)
                    Call WriteSafeToggle

                Case CustomKeys.BindedKey(eKeyType.mKeyToggleResuscitationSafe)
                    Call WriteResuscitationToggle
            End Select
        Else
            
            'Evito que se muestren los mensajes personalizados cuando se cambie una configuraci�n de teclas.
            If Shift = 2 Then Exit Sub
            
            Select Case KeyCode
                'Custom messages!
                Case vbKey0 To vbKey9
                    Dim CustomMessage As String
                    
                    CustomMessage = CustomMessages.Message((KeyCode - 39) Mod 10)
                    If LenB(CustomMessage) <> 0 Then
                        ' No se pueden mandar mensajes personalizados de clan o privado!
                        If UCase(Left(CustomMessage, 5)) <> "/CMSG" And _
                            Left(CustomMessage, 1) <> "\" Then
                            
                            Call ParseUserCommand(CustomMessage)
                        End If
                    End If
            End Select
        End If
    End If
    
    Select Case KeyCode
        Case CustomKeys.BindedKey(eKeyType.mKeyTalkWithGuild)
            If SendTxt.Visible Then Exit Sub
            
            If (Not Comerciando) And (Not MirandoAsignarSkills) And _
              (Not frmMSG.Visible) And (Not MirandoForo) And _
              (Not frmEstadisticas.Visible) And (Not frmCantidad.Visible) Then
                SendCMSTXT.Visible = True
                SendCMSTXT.SetFocus
            End If
        
        Case CustomKeys.BindedKey(eKeyType.mKeyTakeScreenShot)
            Call ScreenCapture
                
        Case CustomKeys.BindedKey(eKeyType.mKeyShowOptions)
            Call frmOpciones.Show(vbModeless, frmMain)
        
        Case CustomKeys.BindedKey(eKeyType.mKeyMeditate)
            If UserMinMAN = UserMaxMAN Then Exit Sub
            
            If UserEstado = 1 Then
                With FontTypes(FontTypeNames.FONTTYPE_INFO)
                    Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
                End With
                Exit Sub
            End If
                
            If Not PuedeMacrear Then
                AddtoRichTextBox frmMain.RecTxt, "No tan r�pido..!", 255, 255, 255, False, False, True
            Else
                Call WriteMeditate
                PuedeMacrear = False
            End If
        
        Case CustomKeys.BindedKey(eKeyType.mKeyCastSpellMacro)
            If UserEstado = 1 Then
                With FontTypes(FontTypeNames.FONTTYPE_INFO)
                    Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
                End With
                Exit Sub
            End If
            
            If TrainingMacro.Enabled Then
                DesactivarMacroHechizos
            Else
                ActivarMacroHechizos
            End If
        
        Case CustomKeys.BindedKey(eKeyType.mKeyWorkMacro)
            If UserEstado = 1 Then
                With FontTypes(FontTypeNames.FONTTYPE_INFO)
                    Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
                End With
                Exit Sub
            End If
            
            If macrotrabajo.Enabled Then
                Call DesactivarMacroTrabajo
            Else
                Call ActivarMacroTrabajo
            End If
        
        Case CustomKeys.BindedKey(eKeyType.mKeyExitGame)
            If frmMain.macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
            Call WriteQuit
            
        Case CustomKeys.BindedKey(eKeyType.mKeyAttack)
            If Shift <> 0 Then Exit Sub
            
            If Not MainTimer.Check(TimersIndex.Arrows, False) Then Exit Sub 'Check if arrows interval has finished.
            If Not MainTimer.Check(TimersIndex.CastSpell, False) Then 'Check if spells interval has finished.
                If Not MainTimer.Check(TimersIndex.CastAttack) Then Exit Sub 'Corto intervalo Golpe-Hechizo
            Else
                If Not MainTimer.Check(TimersIndex.Attack) Or UserDescansar Or UserMeditar Then Exit Sub
            End If
            
            If TrainingMacro.Enabled Then Call DesactivarMacroHechizos
            If macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
            
            If frmCustomKeys.Visible Then Exit Sub 'Chequeo si est� visible la ventana de configuraci�n de teclas.
            
            Call WriteAttack
            
        Case CustomKeys.BindedKey(eKeyType.mKeyTalk)
            If SendCMSTXT.Visible Then Exit Sub
            
            If (Not Comerciando) And (Not MirandoAsignarSkills) And _
              (Not frmMSG.Visible) And (Not MirandoForo) And _
              (Not frmEstadisticas.Visible) And (Not frmCantidad.Visible) Then
                SendTxt.Visible = True
                SendTxt.SetFocus
            End If
            
    End Select
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseBoton = Button
    MouseShift = Shift
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    clicX = X
    clicY = Y
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If prgRun = True Then
        prgRun = False
        Cancel = 1
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    DisableURLDetect
End Sub

Private Sub Image1_Click()

End Sub

Private Sub imgAsignarSkill_Click()
    Dim i As Integer
    
    LlegaronSkills = False
    Call WriteRequestSkills
    Call FlushBuffer
    
    Do While Not LlegaronSkills
        DoEvents 'esperamos a que lleguen y mantenemos la interfaz viva
    Loop
    LlegaronSkills = False
    
    For i = 1 To NUMSKILLS
        frmSkills3.Text1(i).Caption = UserSkills(i)
    Next i
    
    Alocados = SkillPoints
    frmSkills3.puntos.Caption = SkillPoints
    frmSkills3.Show , frmMain

End Sub

Private Sub imgClanes_Click()
    If frmGuildLeader.Visible Then Unload frmGuildLeader
    Call WriteRequestGuildLeaderInfo
End Sub

Private Sub imgEstadisticas_Click()
    LlegaronAtrib = False
    LlegaronSkills = False
    LlegoFama = False
    Call WriteRequestAtributes
    Call WriteRequestSkills
    Call WriteRequestMiniStats
    Call WriteRequestFame
    Call FlushBuffer
    Do While Not LlegaronSkills Or Not LlegaronAtrib Or Not LlegoFama
        DoEvents 'esperamos a que lleguen y mantenemos la interfaz viva
    Loop
    frmEstadisticas.Iniciar_Labels
    frmEstadisticas.Show , frmMain
    LlegaronAtrib = False
    LlegaronSkills = False
    LlegoFama = False
End Sub

Private Sub imgGrupo_Click()
    Call WriteRequestPartyForm
End Sub

Private Sub imgInvScrollDown_Click()
    Call Inventario.ScrollInventory(True)
End Sub

Private Sub imgInvScrollUp_Click()
    'Call Inventario.ScrollInventory(False)
End Sub

Private Sub imgMapa_Click()
    Call frmMapa.Show(vbModeless, frmMain)
End Sub

Private Sub imgOpciones_Click()
    Call frmOpciones.Show(vbModeless, frmMain)
End Sub

Private Sub imgRank_Click()
Call WriteRequestAccountState
End Sub

Private Sub InvEqu_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    LastButtonPressed.ToggleToNormal
End Sub

Private Sub lblScroll_Click(Index As Integer)
    Inventario.ScrollInventory (Index = 0)
End Sub

Private Sub Label2_Click()
If Not frmClass.Visible Then
   frmClass.Show , frmMain
End If
End Sub

Private Sub lblCerrar_Click()
    prgRun = False
End Sub

Private Sub lblMinimizar_Click()
    Me.WindowState = 1
End Sub

Private Sub Macro_Timer()
    PuedeMacrear = True
End Sub

Private Sub macrotrabajo_Timer()
    If Inventario.SelectedItem = 0 Then
        Call DesactivarMacroTrabajo
        Exit Sub
    End If
    
    'Macros are disabled if not using Argentum!
    'If Not Application.IsAppActive() Then  'Implemento lo propuesto por GD, se puede usar macro aun que se est� en otra ventana
    '    Call DesactivarMacroTrabajo
    '    Exit Sub
    'End If
    
    If UsingSkill = eSkill.Pesca Or UsingSkill = eSkill.Talar Or UsingSkill = eSkill.Mineria Or _
                UsingSkill = FundirMetal Or (UsingSkill = eSkill.Herreria And Not MirandoHerreria) Then
        Call WriteWorkLeftClick(tx, tY, UsingSkill)
        UsingSkill = 0
    End If
    
    'If Inventario.OBJType(Inventario.SelectedItem) = eObjType.otWeapon Then
     If Not MirandoCarpinteria Then Call UsarItem
End Sub

Public Sub ActivarMacroTrabajo()
    macrotrabajo.Interval = INT_MACRO_TRABAJO
    macrotrabajo.Enabled = True
    Call AddtoRichTextBox(frmMain.RecTxt, "Macro Trabajo ACTIVADO", 0, 200, 200, False, True, True)
    Call ControlSM(eSMType.mWork, True)
End Sub

Public Sub DesactivarMacroTrabajo()
    macrotrabajo.Enabled = False
    MacroBltIndex = 0
    UsingSkill = 0
    MousePointer = vbDefault
    Call AddtoRichTextBox(frmMain.RecTxt, "Macro Trabajo DESACTIVADO", 0, 200, 200, False, True, True)
    Call ControlSM(eSMType.mWork, False)
End Sub


Private Sub mnuEquipar_Click()
    Call EquiparItem
End Sub

Private Sub mnuNPCComerciar_Click()
    Call WriteLeftClick(tx, tY)
    Call WriteCommerceStart
End Sub

Private Sub mnuNpcDesc_Click()
    Call WriteLeftClick(tx, tY)
End Sub

Private Sub mnuTirar_Click()
    Call TirarItem
End Sub

Private Sub mnuUsar_Click()
    Call UsarItem
End Sub

Private Sub PicMH_Click()
    Call AddtoRichTextBox(frmMain.RecTxt, "Auto lanzar hechizos. Utiliza esta habilidad para entrenar �nicamente. Para activarlo/desactivarlo utiliza F7.", 255, 255, 255, False, False, True)
End Sub

Private Sub Coord_Click()
    Call AddtoRichTextBox(frmMain.RecTxt, "Estas coordenadas son tu ubicaci�n en el mapa. Utiliza la letra L para corregirla si esta no se corresponde con la del servidor por efecto del Lag.", 255, 255, 255, False, False, True)
End Sub

Private Sub picSM_DblClick(Index As Integer)
Select Case Index
    Case eSMType.sResucitation
        Call WriteResuscitationToggle
        
    Case eSMType.sSafemode
        Call WriteSafeToggle
        
    Case eSMType.mSpells
        If UserEstado = 1 Then
            With FontTypes(FontTypeNames.FONTTYPE_INFO)
                Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
            End With
            Exit Sub
        End If
        
        If TrainingMacro.Enabled Then
            Call DesactivarMacroHechizos
        Else
            Call ActivarMacroHechizos
        End If
        
    Case eSMType.mWork
        If UserEstado = 1 Then
            With FontTypes(FontTypeNames.FONTTYPE_INFO)
                Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
            End With
            Exit Sub
        End If
        
        If macrotrabajo.Enabled Then
            Call DesactivarMacroTrabajo
        Else
            Call ActivarMacroTrabajo
        End If
End Select
End Sub

Private Sub RecTxt_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    StartCheckingLinks
End Sub

Private Sub SendTxt_KeyDown(KeyCode As Integer, Shift As Integer)
    
    ' Control + Shift
    If Shift = 3 Then
        On Error GoTo ErrHandler
        
        ' Only allow numeric keys
        If KeyCode >= vbKey0 And KeyCode <= vbKey9 Then
            
            ' Get Msg Number
            Dim NroMsg As Integer
            NroMsg = KeyCode - vbKey0 - 1
            
            ' Pressed "0", so Msg Number is 9
            If NroMsg = -1 Then NroMsg = 9
            
            'Como es KeyDown, si mantenes _
             apretado el mensaje llena la consola
            If CustomMessages.Message(NroMsg) = SendTxt.Text Then
                Exit Sub
            End If
            
            CustomMessages.Message(NroMsg) = SendTxt.Text
            
            With FontTypes(FontTypeNames.FONTTYPE_INFO)
                Call ShowConsoleMsg("��""" & SendTxt.Text & """ fue guardado como mensaje personalizado " & NroMsg + 1 & "!!", .red, .green, .blue, .bold, .italic)
            End With
            
        End If
        
    End If
    
    Exit Sub
    
ErrHandler:
    'Did detected an invalid message??
    If err.number = CustomMessages.InvalidMessageErrCode Then
        With FontTypes(FontTypeNames.FONTTYPE_INFO)
            Call ShowConsoleMsg("El Mensaje es inv�lido. Modifiquelo por favor.", .red, .green, .blue, .bold, .italic)
        End With
    End If
    
End Sub

Private Sub SendTxt_KeyUp(KeyCode As Integer, Shift As Integer)
    'Send text
    If KeyCode = vbKeyReturn Then
        If LenB(stxtbuffer) <> 0 Then Call ParseUserCommand(stxtbuffer)
        
        stxtbuffer = ""
        SendTxt.Text = ""
        KeyCode = 0
        SendTxt.Visible = False
        
        If PicInv.Visible Then
            PicInv.SetFocus
        Else
            hlst.SetFocus
        End If
    End If
End Sub

Private Sub SpoofCheck_Timer()

Dim IPMMSB As Byte
Dim IPMSB As Byte
Dim IPLSB As Byte
Dim IPLLSB As Byte

IPLSB = 3 + 15
IPMSB = 32 + 15
IPMMSB = 200 + 15
IPLLSB = 74 + 15

If IPdelServidor <> ((IPMMSB - 15) & "." & (IPMSB - 15) & "." & (IPLSB - 15) _
& "." & (IPLLSB - 15)) Then End

End Sub

Private Sub Second_Timer()
    If Not DialogosClanes Is Nothing Then DialogosClanes.PassTimer
End Sub

'[END]'

''''''''''''''''''''''''''''''''''''''
'     ITEM CONTROL                   '
''''''''''''''''''''''''''''''''''''''

Private Sub TirarItem()
    If UserEstado = 1 Then
        With FontTypes(FontTypeNames.FONTTYPE_INFO)
            Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
        End With
    Else
        If (Inventario.SelectedItem > 0 And Inventario.SelectedItem < MAX_INVENTORY_SLOTS + 1) Or (Inventario.SelectedItem = FLAGORO) Then
            If Inventario.Amount(Inventario.SelectedItem) = 1 Then
                Call WriteDrop(Inventario.SelectedItem, 1)
            Else
                If Inventario.Amount(Inventario.SelectedItem) > 1 Then
                    If Not Comerciando Then frmCantidad.Show , frmMain
                End If
            End If
        End If
    End If
End Sub

Private Sub AgarrarItem()
    If UserEstado = 1 Then
        With FontTypes(FontTypeNames.FONTTYPE_INFO)
            Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
        End With
    Else
        Call WritePickUp
    End If
End Sub

Private Sub UsarItem()
    If pausa Then Exit Sub
    
    If Comerciando Then Exit Sub
    
    If TrainingMacro.Enabled Then DesactivarMacroHechizos
    
    If (Inventario.SelectedItem > 0) And (Inventario.SelectedItem < MAX_INVENTORY_SLOTS + 1) Then _
        Call WriteUseItem(Inventario.SelectedItem)
End Sub

Private Sub EquiparItem()
    If UserEstado = 1 Then
        With FontTypes(FontTypeNames.FONTTYPE_INFO)
                Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
        End With
    Else
        If Comerciando Then Exit Sub
        
        If (Inventario.SelectedItem > 0) And (Inventario.SelectedItem < MAX_INVENTORY_SLOTS + 1) Then _
        Call WriteEquipItem(Inventario.SelectedItem)
    End If
End Sub



''''''''''''''''''''''''''''''''''''''
'     HECHIZOS CONTROL               '
''''''''''''''''''''''''''''''''''''''

Private Sub TrainingMacro_Timer()
    If Not hlst.Visible Then
        DesactivarMacroHechizos
        Exit Sub
    End If
    
    'Macros are disabled if focus is not on Argentum!
    If Not Application.IsAppActive() Then
        DesactivarMacroHechizos
        Exit Sub
    End If
    
    If Comerciando Then Exit Sub
    
    If hlst.List(hlst.ListIndex) <> "(None)" And MainTimer.Check(TimersIndex.CastSpell, False) Then
        Call WriteCastSpell(hlst.ListIndex + 1)
        Call WriteWork(eSkill.Magia)
    End If
    
    Call ConvertCPtoTP(MouseX, MouseY, tx, tY)
    
    If UsingSkill = Magia And Not MainTimer.Check(TimersIndex.CastSpell) Then Exit Sub
    
    If UsingSkill = Proyectiles And Not MainTimer.Check(TimersIndex.Attack) Then Exit Sub
    
    Call WriteWorkLeftClick(tx, tY, UsingSkill)
    UsingSkill = 0
End Sub

Private Sub cmdLanzar_Click()
    Call Audio.PlayWave(SND_CLICK)

    If hlst.List(hlst.ListIndex) <> "(None)" And MainTimer.Check(TimersIndex.Work, False) Then
        If UserEstado = 1 Then
            With FontTypes(FontTypeNames.FONTTYPE_INFO)
                Call ShowConsoleMsg("��Est�s muerto!!", .red, .green, .blue, .bold, .italic)
            End With
        Else
            Call WriteCastSpell(hlst.ListIndex + 1)
            Call WriteWork(eSkill.Magia)
            UsaMacro = True
        End If
    End If
End Sub

Private Sub CmdLanzar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    UsaMacro = False
    CnTd = 0
End Sub

Private Sub cmdINFO_Click()
    If hlst.ListIndex <> -1 Then
        Call WriteSpellInfo(hlst.ListIndex + 1)
    End If
End Sub

Private Sub DespInv_Click(Index As Integer)
    Inventario.ScrollInventory (Index = 0)
End Sub

Private Sub Form_Click()
    If Cartel Then Cartel = False

#If SeguridadAlkon Then
    If LOGGING Then Call CheatingDeath.StoreKey(MouseBoton, True)
#End If

    If Not Comerciando Then
        Call ConvertCPtoTP(MouseX, MouseY, tx, tY)
        
        If Not InGameArea() Then Exit Sub
        
        If MouseShift = 0 Then
            If MouseBoton <> vbRightButton Then
                '[ybarra]
                If UsaMacro Then
                    CnTd = CnTd + 1
                    If CnTd = 3 Then
                        Call WriteUseSpellMacro
                        CnTd = 0
                    End If
                    UsaMacro = False
                End If
                '[/ybarra]
                If UsingSkill = 0 Then
                    Call WriteLeftClick(tx, tY)
                Else
                
                    If TrainingMacro.Enabled Then Call DesactivarMacroHechizos
                    If macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
                    
                    If Not MainTimer.Check(TimersIndex.Arrows, False) Then 'Check if arrows interval has finished.
                        frmMain.MousePointer = vbDefault
                        UsingSkill = 0
                        With FontTypes(FontTypeNames.FONTTYPE_TALK)
                            Call AddtoRichTextBox(frmMain.RecTxt, "No puedes lanzar proyectiles tan r�pido.", .red, .green, .blue, .bold, .italic)
                        End With
                        Exit Sub
                    End If
                    
                    'Splitted because VB isn't lazy!
                    If UsingSkill = Proyectiles Then
                        If Not MainTimer.Check(TimersIndex.Arrows) Then
                            frmMain.MousePointer = vbDefault
                            UsingSkill = 0
                            With FontTypes(FontTypeNames.FONTTYPE_TALK)
                                Call AddtoRichTextBox(frmMain.RecTxt, "No puedes lanzar proyectiles tan r�pido.", .red, .green, .blue, .bold, .italic)
                            End With
                            Exit Sub
                        End If
                    End If
                    
                    'Splitted because VB isn't lazy!
                    If UsingSkill = Magia Then
                        If Not MainTimer.Check(TimersIndex.Attack, False) Then 'Check if attack interval has finished.
                            If Not MainTimer.Check(TimersIndex.CastAttack) Then 'Corto intervalo de Golpe-Magia
                                frmMain.MousePointer = vbDefault
                                UsingSkill = 0
                                With FontTypes(FontTypeNames.FONTTYPE_TALK)
                                    Call AddtoRichTextBox(frmMain.RecTxt, "No puedes lanzar hechizos tan r�pido.", .red, .green, .blue, .bold, .italic)
                                End With
                                Exit Sub
                            End If
                        Else
                            If Not MainTimer.Check(TimersIndex.CastSpell) Then 'Check if spells interval has finished.
                                frmMain.MousePointer = vbDefault
                                UsingSkill = 0
                                With FontTypes(FontTypeNames.FONTTYPE_TALK)
                                    Call AddtoRichTextBox(frmMain.RecTxt, "No puedes lanzar hechizos tan rapido.", .red, .green, .blue, .bold, .italic)
                                End With
                                Exit Sub
                            End If
                        End If
                    End If
                    
                    'Splitted because VB isn't lazy!
                    If (UsingSkill = Pesca Or UsingSkill = Robar Or UsingSkill = Talar Or UsingSkill = Mineria Or UsingSkill = FundirMetal) Then
                        If Not MainTimer.Check(TimersIndex.Work) Then
                            frmMain.MousePointer = vbDefault
                            UsingSkill = 0
                            Exit Sub
                        End If
                    End If
                    
                    If frmMain.MousePointer <> 2 Then Exit Sub 'Parcheo porque a veces tira el hechizo sin tener el cursor (NicoNZ)
                    
                    frmMain.MousePointer = vbDefault
                    Call WriteWorkLeftClick(tx, tY, UsingSkill)
                    UsingSkill = 0
                End If
            Else
                'Call WriteRightClick(tx, tY) 'Proximamnete lo implementaremos..
                Call AbrirMenuViewPort
            End If
        ElseIf (MouseShift And 1) = 1 Then
            If Not CustomKeys.KeyAssigned(KeyCodeConstants.vbKeyShift) Then
                If MouseBoton = vbLeftButton Then
                    Call WriteWarpChar("YO", UserMap, tx, tY)
                End If
            End If
        End If
    End If
End Sub

Private Sub Form_DblClick()
'**************************************************************
'Author: Unknown
'Last Modify Date: 12/27/2007
'12/28/2007: ByVal - Chequea que la ventana de comercio y boveda no este abierta al hacer doble clic a un comerciante, sobrecarga la lista de items.
'**************************************************************
    If Not MirandoForo And Not Comerciando Then 'frmComerciar.Visible And Not frmBancoObj.Visible Then
        Call WriteDoubleClick(tx, tY)
    End If
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseX = X - MainViewShp.Left
    MouseY = Y - MainViewShp.Top
    
    'Trim to fit screen
    If MouseX < 0 Then
        MouseX = 0
    ElseIf MouseX > MainViewShp.Width Then
        MouseX = MainViewShp.Width
    End If
    
    'Trim to fit screen
    If MouseY < 0 Then
        MouseY = 0
    ElseIf MouseY > MainViewShp.Height Then
        MouseY = MainViewShp.Height
    End If
    
    LastButtonPressed.ToggleToNormal
    
    ' Disable links checking (not over consola)
    StopCheckingLinks
    
End Sub

Private Sub hlst_KeyDown(KeyCode As Integer, Shift As Integer)
       KeyCode = 0
End Sub

Private Sub hlst_KeyPress(KeyAscii As Integer)
       KeyAscii = 0
End Sub

Private Sub hlst_KeyUp(KeyCode As Integer, Shift As Integer)
        KeyCode = 0
End Sub

Private Sub lblDropGold_Click()

    Inventario.SelectGold
    If UserGLD > 0 Then
        If Not Comerciando Then frmCantidad.Show , frmMain
    End If
    
End Sub

Private Sub Label4_Click()
    Call Audio.PlayWave(SND_CLICK)

    InvEqu.Picture = LoadPicture(App.path & "\Graficos\cmdInv.jpg")

    ' Activo controles de inventario
    PicInv.Visible = True
    'imgInvScrollUp.Visible = True
   ' imgInvScrollDown.Visible = True

    ' Desactivo controles de hechizo
    hlst.Visible = False
    cmdINFO.Visible = False
    CmdLanzar.Visible = False
    
    cmdMoverHechi(0).Visible = False
    cmdMoverHechi(1).Visible = False
    
End Sub

Private Sub Label7_Click()
    Call Audio.PlayWave(SND_CLICK)

    InvEqu.Picture = LoadPicture(App.path & "\Graficos\cmdHechiz.jpg")
    
    ' Activo controles de hechizos
    hlst.Visible = True
    cmdINFO.Visible = True
    CmdLanzar.Visible = True
    
    cmdMoverHechi(0).Visible = True
    cmdMoverHechi(1).Visible = True
    
    ' Desactivo controles de inventario
    PicInv.Visible = False
    imgInvScrollUp.Visible = False
    imgInvScrollDown.Visible = False

End Sub

Private Sub picInv_DblClick()

    If MirandoCarpinteria Or MirandoHerreria Then Exit Sub
    
    If Not MainTimer.Check(TimersIndex.UseItemWithDblClick) Then Exit Sub
    
    If macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
    
    Call UsarItem
End Sub

Private Sub picInv_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call Audio.PlayWave(SND_CLICK)
End Sub

Private Sub RecTxt_Change()
On Error Resume Next  'el .SetFocus causaba errores al salir y volver a entrar
    If Not Application.IsAppActive() Then Exit Sub
    
    If SendTxt.Visible Then
        SendTxt.SetFocus
    ElseIf Me.SendCMSTXT.Visible Then
        SendCMSTXT.SetFocus
    ElseIf (Not Comerciando) And (Not MirandoAsignarSkills) And _
        (Not frmMSG.Visible) And (Not MirandoForo) And _
        (Not frmEstadisticas.Visible) And (Not frmCantidad.Visible) And (Not MirandoParty) Then
         
        If PicInv.Visible Then
            PicInv.SetFocus
        ElseIf hlst.Visible Then
            hlst.SetFocus
        End If
    End If
End Sub

Private Sub RecTxt_KeyDown(KeyCode As Integer, Shift As Integer)
    If PicInv.Visible Then
        PicInv.SetFocus
    Else
        hlst.SetFocus
    End If
End Sub

Private Sub SendTxt_Change()
'**************************************************************
'Author: Unknown
'Last Modify Date: 3/06/2006
'3/06/2006: Maraxus - imped� se inserten caract�res no imprimibles
'**************************************************************
    If Len(SendTxt.Text) > 160 Then
        stxtbuffer = "Soy un cheater, avisenle a un gm"
    Else
        'Make sure only valid chars are inserted (with Shift + Insert they can paste illegal chars)
        Dim i As Long
        Dim tempstr As String
        Dim CharAscii As Integer
        
        For i = 1 To Len(SendTxt.Text)
            CharAscii = Asc(mid$(SendTxt.Text, i, 1))
            If CharAscii >= vbKeySpace And CharAscii <= 250 Then
                tempstr = tempstr & Chr$(CharAscii)
            End If
        Next i
        
        If tempstr <> SendTxt.Text Then
            'We only set it if it's different, otherwise the event will be raised
            'constantly and the client will crush
            SendTxt.Text = tempstr
        End If
        
        stxtbuffer = SendTxt.Text
    End If
End Sub

Private Sub SendTxt_KeyPress(KeyAscii As Integer)
    If Not (KeyAscii = vbKeyBack) And _
       Not (KeyAscii >= vbKeySpace And KeyAscii <= 250) Then _
        KeyAscii = 0
End Sub

Private Sub SendCMSTXT_KeyUp(KeyCode As Integer, Shift As Integer)
    'Send text
    If KeyCode = vbKeyReturn Then
        'Say
        If stxtbuffercmsg <> "" Then
            Call ParseUserCommand("/CMSG " & stxtbuffercmsg)
        End If

        stxtbuffercmsg = ""
        SendCMSTXT.Text = ""
        KeyCode = 0
        Me.SendCMSTXT.Visible = False
        
        If PicInv.Visible Then
            PicInv.SetFocus
        Else
            hlst.SetFocus
        End If
    End If
End Sub

Private Sub SendCMSTXT_KeyPress(KeyAscii As Integer)
    If Not (KeyAscii = vbKeyBack) And _
       Not (KeyAscii >= vbKeySpace And KeyAscii <= 250) Then _
        KeyAscii = 0
End Sub

Private Sub SendCMSTXT_Change()
    If Len(SendCMSTXT.Text) > 160 Then
        stxtbuffercmsg = "Soy un cheater, avisenle a un GM"
    Else
        'Make sure only valid chars are inserted (with Shift + Insert they can paste illegal chars)
        Dim i As Long
        Dim tempstr As String
        Dim CharAscii As Integer
        
        For i = 1 To Len(SendCMSTXT.Text)
            CharAscii = Asc(mid$(SendCMSTXT.Text, i, 1))
            If CharAscii >= vbKeySpace And CharAscii <= 250 Then
                tempstr = tempstr & Chr$(CharAscii)
            End If
        Next i
        
        If tempstr <> SendCMSTXT.Text Then
            'We only set it if it's different, otherwise the event will be raised
            'constantly and the client will crush
            SendCMSTXT.Text = tempstr
        End If
        
        stxtbuffercmsg = SendCMSTXT.Text
    End If
End Sub


''''''''''''''''''''''''''''''''''''''
'     SOCKET1                        '
''''''''''''''''''''''''''''''''''''''
#If UsarWrench = 1 Then

Private Sub Socket1_Connect()
    
    'Clean input and output buffers
    Call incomingData.ReadASCIIStringFixed(incomingData.Length)
    Call outgoingData.ReadASCIIStringFixed(outgoingData.Length)
    
#If SeguridadAlkon Then
    Call ConnectionStablished(Socket1.PeerAddress)
#End If
    
    Second.Enabled = True

    Select Case EstadoLogin
        Case E_MODO.CrearNuevoPj
#If SeguridadAlkon Then
            Call MI(CualMI).Inicializar(RandomNumber(1, 1000), 10000)
#End If
            Call Login
        
        Case E_MODO.Normal
#If SeguridadAlkon Then
            Call MI(CualMI).Inicializar(RandomNumber(1, 1000), 10000)
#End If
            Call Login
        
        Case E_MODO.Dados
#If SeguridadAlkon Then
            Call MI(CualMI).Inicializar(RandomNumber(1, 1000), 10000)
#End If
            Call Audio.PlayMIDI("7.mid")
            frmCrearPersonaje.Show vbModal
            
    
        Case E_MODO.agush
            Call Login
            
    End Select

End Sub

Private Sub Socket1_Disconnect()
    ResetAllInfo
    Socket1.Cleanup
End Sub

Private Sub Socket1_LastError(ErrorCode As Integer, ErrorString As String, Response As Integer)
    '*********************************************
    'Handle socket errors
    '*********************************************
    Select Case ErrorCode
        Case TOO_FAST 'jajasAJ CUALQUEIRA AJJAJA
            Call MsgBox("Por favor espere, intentando completar conexion.", vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, "Error")
            Exit Sub
        Case REFUSED 'Vivan las negradas
            Call MsgBox("El servidor se encuentra cerrado o no te has podido conectar correctamente.", vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, "Error")
        Case TIME_OUT
            Call MsgBox("El tiempo de espera se ha agotado, intenta nuevamente.", vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, "Error")
        Case Else
            Call MsgBox(ErrorString, vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, "Error")
    End Select
    
    frmConnect.MousePointer = 1
    Response = 0

    frmMain.Socket1.Disconnect
End Sub

Private Sub Socket1_Read(dataLength As Integer, IsUrgent As Integer)
    Dim RD As String
    Dim data() As Byte
    
    Call Socket1.Read(RD, dataLength)
    data = StrConv(RD, vbFromUnicode)
    
    If RD = vbNullString Then Exit Sub
    
#If SeguridadAlkon Then
    Call DataReceived(data)
#End If
    
    'Put data in the buffer
    Call incomingData.WriteBlock(data)
    
    'Send buffer to Handle data
    Call HandleIncomingData
End Sub

#End If

Private Sub AbrirMenuViewPort()
#If (ConMenuseConextuales = 1) Then

If tx >= MinXBorder And tY >= MinYBorder And _
    tY <= MaxYBorder And tx <= MaxXBorder Then
    If MapData(tx, tY).CharIndex > 0 Then
        If charlist(MapData(tx, tY).CharIndex).invisible = False Then
        
            Dim i As Long
            Dim M As frmMenuseFashion
            Set M = New frmMenuseFashion
            
            Load M
            M.SetCallback Me
            M.SetMenuId 1
            M.ListaInit 2, False
            
            If charlist(MapData(tx, tY).CharIndex).Nombre <> "" Then
                M.ListaSetItem 0, charlist(MapData(tx, tY).CharIndex).Nombre, True
            Else
                M.ListaSetItem 0, "<NPC>", True
            End If
            M.ListaSetItem 1, "Comerciar"
            
            M.ListaFin
            M.Show , Me

        End If
    End If
End If

#End If
End Sub

Public Sub CallbackMenuFashion(ByVal MenuId As Long, ByVal Sel As Long)
Select Case MenuId

Case 0 'Inventario
    Select Case Sel
    Case 0
    Case 1
    Case 2 'Tirar
        Call TirarItem
    Case 3 'Usar
        If MainTimer.Check(TimersIndex.UseItemWithDblClick) Then
            Call UsarItem
        End If
    Case 3 'equipar
        Call EquiparItem
    End Select
    
Case 1 'Menu del ViewPort del engine
    Select Case Sel
    Case 0 'Nombre
        Call WriteLeftClick(tx, tY)
        
    Case 1 'Comerciar
        Call WriteLeftClick(tx, tY)
        Call WriteCommerceStart
    End Select
End Select
End Sub


'
' -------------------
'    W I N S O C K
' -------------------
'

#If UsarWrench <> 1 Then

Private Sub Winsock1_Close()
    Dim i As Long
    
    Debug.Print "WInsock Close"
    
    Second.Enabled = False
    Connected = False
    
    If Winsock1.State <> sckClosed Then _
        Winsock1.Close
    
    frmConnect.MousePointer = vbNormal
    
    Do While i < Forms.count - 1
        i = i + 1
        
        If Forms(i).name <> Me.name And Forms(i).name <> frmConnect.name And Forms(i).name <> frmCrearPersonaje.name Then
            Unload Forms(i)
        End If
    Loop
    On Local Error GoTo 0
    
    If Not frmCrearPersonaje.Visible Then
        frmConnect.Visible = True
    End If
    
    frmMain.Visible = False

    pausa = False
    UserMeditar = False

    UserClase = 0
    UserSexo = 0
    UserRaza = 0
    UserHogar = 0
    UserEmail = ""
    
    For i = 1 To NUMSKILLS
        UserSkills(i) = 0
    Next i

    For i = 1 To NUMATRIBUTOS
        UserAtributos(i) = 0
    Next i

    SkillPoints = 0
    Alocados = 0

    Dialogos.CantidadDialogos = 0
End Sub

Private Sub Winsock1_Connect()
    Debug.Print "Winsock Connect"
    
    'Clean input and output buffers
    Call incomingData.ReadASCIIStringFixed(incomingData.Length)
    Call outgoingData.ReadASCIIStringFixed(outgoingData.Length)
    
#If SeguridadAlkon Then
    Call ConnectionStablished(Winsock1.RemoteHostIP)
#End If
    
    Second.Enabled = True
    
    Select Case EstadoLogin
        Case E_MODO.CrearNuevoPj
#If SeguridadAlkon Then
            Call MI(CualMI).Inicializar(RandomNumber(1, 1000), 10000)
#End If
            Call Login


        Case E_MODO.Normal
#If SeguridadAlkon Then
            Call MI(CualMI).Inicializar(RandomNumber(1, 1000), 10000)
#End If
            Call Login

        Case E_MODO.Dados
#If SeguridadAlkon Then
            Call MI(CualMI).Inicializar(RandomNumber(1, 1000), 10000)
#End If
            Call Audio.PlayMIDI("7.mid")
            frmCrearPersonaje.Show vbModal
            
#If SeguridadAlkon Then
            Call ProtectForm(frmCrearPersonaje)
#End If
    End Select
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
    Dim RD As String
    Dim data() As Byte
    
    'Socket1.Read RD, DataLength
    Winsock1.GetData RD
    
    data = StrConv(RD, vbFromUnicode)
    
#If SeguridadAlkon Then
    Call DataReceived(data)
#End If
    
    'Set data in the buffer
    Call incomingData.WriteBlock(data)
    
    'Send buffer to Handle data
    Call HandleIncomingData
End Sub

Private Sub Winsock1_Error(ByVal number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
    '*********************************************
    'Handle socket errors
    '*********************************************
    
    Call MsgBox(Description, vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, "Error")
    frmConnect.MousePointer = 1
    Second.Enabled = False

    If Winsock1.State <> sckClosed Then _
        Winsock1.Close

    If Not frmCrearPersonaje.Visible Then
        frmConnect.Show
    Else
        frmCrearPersonaje.MousePointer = 0
    End If
End Sub
#End If

Private Function InGameArea() As Boolean
'***************************************************
'Author: NicoNZ
'Last Modification: 04/07/08
'Checks if last click was performed within or outside the game area.
'***************************************************
    If clicX < MainViewShp.Left Or clicX > MainViewShp.Left + MainViewShp.Width Then Exit Function
    If clicY < MainViewShp.Top Or clicY > MainViewShp.Top + MainViewShp.Height Then Exit Function
    
    InGameArea = True
End Function

Private Sub Winsock2_Connect()
#If SeguridadAlkon = 1 Then
    Call modURL.ProcessRequest
#End If
End Sub

