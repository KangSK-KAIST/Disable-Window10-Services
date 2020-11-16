title		"Disable Windows10 Services - by KSK"
REM			Written by KangSeungkwan - 20201117
REM			This batch diables services in Windows10.

ECHO		"-------------------------------------------"
ECHO		"|       Windows10 Service Minimizer       |"
ECHO		"|              Made by KangSK             |"
ECHO		"-------------------------------------------"
ECHO		"                                           "
ECHO		"Disabling services might break your system."
ECHO		"   To ensure safety, select Manual mode.   "
ECHO		"                                           "


REM			Start of main program
SETLOCAL

set SERVICE_NAME = "AGMService" "AGSService"
set SERVICE_DISP = "Adobe Genuine Moniter Service" "Adobe Genuine Software Integrity Service"

REM			Choose whether disable or just prevent auto-runs
CHOICE /C DM /N /M "Will you (D)isable or change to (M)anual mode?"
IF	ERRORLEVEL 1 SET MODE=0:
IF	ERRORLEVEL 2 SET MODE=1:

ECHO		"Stopping Adobe Genuine Moniter Service..."
REM			SSDP Discovery
sc config SSDPSRV start=disabled
REM			Geolocation Service
sc config lfsvc start=disabled
REM			ActiveX Installer
sc config AXInstSV start=disabled
REM			AllJoyn Router Service
sc config AJRouter start=disabled
REM			App Readiness
sc config AppReadiness start=disabled
REM			HomeGroup Listener
sc config HomeGroupListener start=disabled
REM			HomeGroup Provider
sc config HomeGroupProvider start=disabled
REM			Internet Connetion Sharing
sc config SharedAccess start=disabled
REM			Link-Layer Topology Discovery Mapper
sc config lltdsvc start=disabled
REM			Microsoft(R) 診断ハブ標準コレクターサービス
sc config diagnosticshub.standardcollector.service start=disabled
REM			Microsoft Account Sign-in Assistant
sc config wlidsvc start=disabled
REM			Microsoft Windows SMS ルーター サービス。
sc config SmsRouter start=disabled
REM			Network Connected Devicees Auto-Setup
sc config NcdAutoSetup start=disabled
REM			Peer Name Resolution Protocol
sc config PNRPsvc start=disabled
REM			Peer Networking Group
sc config p2psvc start=disabled
REM			Peer Networking Identity Manager
sc config p2pimsvc start=disabled
REM			PNRP Machine Name Publication Service
sc config PNRPAutoReg start=disabled
REM			WalletService
sc config WalletService start=disabled
REM			Windows Media Player Network Sharing Service
sc config WMPNetworkSvc start=disabled
REM			Windows モバイル ホットスポット
sc config icssvc start=disabled
REM			Xbox Live Auth Manager
sc config XblAuthManager start=disabled
REM			Xbox Live セーブデータ
sc config XblGameSave start=disabled
REM			Xbox Live ネットワーキング サービス
sc config XboxNetApiSvc start=disabled
REM			デバイス管理登録サービス
sc config DmEnrollmentSvc start=disabled
REM			市販デモ サービス
sc config RetailDemo start=disabled


REM			End of program
ENDLOCAL