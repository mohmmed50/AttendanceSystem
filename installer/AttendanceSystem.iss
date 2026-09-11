#define MyAppName "نظام تسجيل الحضور"
#define MyAppVersion "1.0.0"
#define MyAppExeName "AttendanceSystem.exe"
#define MyAppPublisher "Attendance System"

[Setup]
AppId={{6F2C4E2E-6B7E-4C7B-9C1A-8E2D6C9B2C1A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={userdesktop}\AttendanceSystem
DisableDirPage=no
DefaultGroupName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
OutputDir=..\installer_output
OutputBaseFilename=AttendanceSystem_Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest
ArchitecturesInstallIn64BitMode=x64compatible
SetupIconFile=..\assets\app_icon.ico
WizardStyle=modern
DisableProgramGroupPage=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\dist\AttendanceSystem.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "data_readme.txt"; DestDir: "{app}\data"; DestName: "اقرأني.txt"; Flags: ignoreversion

[Dirs]
Name: "{app}\data"
Name: "{app}\backup"
Name: "{app}\logs"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "تشغيل البرنامج الآن"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}\logs"
Type: filesandordirs; Name: "{app}\backup"

