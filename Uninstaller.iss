; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "UC-Uninstaller"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "wangwenx190"
#define MyAppURL "http://www.example.com/"
#define MyAppExeName "MyProg.exe"
#define MyAppID "{DCD1CB0A-8C25-4BF0-9CA6-60ED605C7362}"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{#MyAppID}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
CreateAppDir=no
OutputBaseFilename=Uninstall
Compression=lzma
SolidCompression=yes
Uninstallable=no
PrivilegesRequired=admin
OutputDir=.\App
SetupMutex={{#MyAppID}Uninstaller,Global\{{#MyAppID}Uninstaller
;AppMutex={#MyAppMutex}

[Languages]
;��װ����Ϊ�������ģ�����Ҫ�����������ڴ���������
Name: "zh_CN"; MessagesFile: ".\lang\zh-CN.isl"

[Messages]
zh_CN.SetupAppTitle=ж��
zh_CN.SetupWindowTitle=%1ж��
zh_CN.SetupAlreadyRunning=ж�����Ѿ�����
zh_CN.SetupAppRunningError=ж���򵼼�⵽%1�������С�%n%n��ر������д��ڣ�Ȼ������ȷ����������������ȡ�����˳���

[Files]
;����������ʱ��Դ�ļ�
Source: ".\tmp\background_uninstall_prepare.png"; DestDir: "{tmp}"; Flags: dontcopy solidbreak nocompression; Attribs: hidden system
Source: ".\tmp\button_cancel.png"; DestDir: "{tmp}"; Flags: dontcopy solidbreak nocompression; Attribs: hidden system
Source: ".\tmp\button_chat.png"; DestDir: "{tmp}"; Flags: dontcopy solidbreak nocompression; Attribs: hidden system
Source: ".\tmp\button_close.png"; DestDir: "{tmp}"; Flags: dontcopy solidbreak nocompression; Attribs: hidden system
Source: ".\tmp\button_uninstall.png"; DestDir: "{tmp}"; Flags: dontcopy solidbreak nocompression; Attribs: hidden system
Source: ".\tmp\checkbox.png"; DestDir: "{tmp}"; Flags: dontcopy solidbreak nocompression; Attribs: hidden system
Source: ".\tmp\botva2.dll"; DestDir: "{tmp}"; Flags: dontcopy solidbreak nocompression; Attribs: hidden system
Source: ".\tmp\InnoCallback.dll"; DestDir: "{tmp}"; Flags: dontcopy solidbreak nocompression; Attribs: hidden system

[Code]
#include ".\include\Uninstaller.iss"