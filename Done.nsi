############################################################################################
#      NSIS Installation Script created by NSIS Quick Setup Script Generator v1.09.18
#               Entirely Edited with NullSoft Scriptable Installation System                
#              by Vlasis K. Barkas aka Red Wine red_wine@freemail.gr Sep 2006               
############################################################################################

!define APP_NAME "Done"
!define COMP_NAME "MoNasr"
!define WEB_SITE "https://github.com/MoNasr6/IsDone"
!define VERSION "1.00.00.00"
!define COPYRIGHT "MoNasr © 2023"
!define DESCRIPTION "mark file as rename it when it done watched"
!define LICENSE_TXT "E:\barmga\LICENSE.txt"
!define INSTALLER_NAME "E:\barmga\projects\python\IsDone\Setup.exe"
!define MAIN_APP_EXE "Done.exe"
!define INSTALL_TYPE "SetShellVarContext current"
!define REG_ROOT "HKCU"
!define REG_APP_PATH "Software\Microsoft\Windows\CurrentVersion\App Paths\${MAIN_APP_EXE}"
!define UNINSTALL_PATH "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}"

!define REG_START_MENU "Start Menu Folder"

var SM_Folder

######################################################################

VIProductVersion  "${VERSION}"
VIAddVersionKey "ProductName"  "${APP_NAME}"
VIAddVersionKey "CompanyName"  "${COMP_NAME}"
VIAddVersionKey "LegalCopyright"  "${COPYRIGHT}"
VIAddVersionKey "FileDescription"  "${DESCRIPTION}"
VIAddVersionKey "FileVersion"  "${VERSION}"

######################################################################

SetCompressor ZLIB
Name "${APP_NAME}"
Caption "${APP_NAME}"
OutFile "${INSTALLER_NAME}"
BrandingText "${APP_NAME}"
XPStyle on
InstallDirRegKey "${REG_ROOT}" "${REG_APP_PATH}" ""
InstallDir "$PROGRAMFILES\Done"

######################################################################

!include "MUI.nsh"

!define MUI_ABORTWARNING
!define MUI_UNABORTWARNING

!insertmacro MUI_PAGE_WELCOME

!ifdef LICENSE_TXT
!insertmacro MUI_PAGE_LICENSE "${LICENSE_TXT}"
!endif

!insertmacro MUI_PAGE_DIRECTORY

!ifdef REG_START_MENU
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "Done"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${REG_ROOT}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${UNINSTALL_PATH}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${REG_START_MENU}"
!insertmacro MUI_PAGE_STARTMENU Application $SM_Folder
!endif

!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_RUN "$INSTDIR\${MAIN_APP_EXE}"
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM

!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_UNPAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

######################################################################

Section -MainProgram
${INSTALL_TYPE}
SetOverwrite ifnewer
SetOutPath "$INSTDIR"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-console-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-datetime-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-debug-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-errorhandling-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-file-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-file-l1-2-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-file-l2-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-handle-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-heap-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-interlocked-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-libraryloader-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-localization-l1-2-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-memory-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-namedpipe-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-processenvironment-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-processthreads-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-processthreads-l1-1-1.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-profile-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-rtlsupport-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-string-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-synch-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-synch-l1-2-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-sysinfo-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-timezone-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-core-util-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-conio-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-convert-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-environment-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-filesystem-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-heap-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-locale-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-math-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-process-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-runtime-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-stdio-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-string-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-time-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\api-ms-win-crt-utility-l1-1-0.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\base_library.zip"
File "E:\barmga\projects\python\IsDone\dist\Done\Done.exe"
File "E:\barmga\projects\python\IsDone\dist\Done\Formating.txt"
File "E:\barmga\projects\python\IsDone\dist\Done\libcrypto-1_1.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\libssl-1_1.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\python39.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\select.pyd"
File "E:\barmga\projects\python\IsDone\dist\Done\ucrtbase.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\unicodedata.pyd"
File "E:\barmga\projects\python\IsDone\dist\Done\VCRUNTIME140.dll"
File "E:\barmga\projects\python\IsDone\dist\Done\_bz2.pyd"
File "E:\barmga\projects\python\IsDone\dist\Done\_decimal.pyd"
File "E:\barmga\projects\python\IsDone\dist\Done\_hashlib.pyd"
File "E:\barmga\projects\python\IsDone\dist\Done\_lzma.pyd"
File "E:\barmga\projects\python\IsDone\dist\Done\_socket.pyd"
File "E:\barmga\projects\python\IsDone\dist\Done\_ssl.pyd"
SectionEnd

######################################################################

Section -Icons_Reg
SetOutPath "$INSTDIR"
WriteUninstaller "$INSTDIR\uninstall.exe"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_WRITE_BEGIN Application
CreateDirectory "$SMPROGRAMS\$SM_Folder"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!insertmacro MUI_STARTMENU_WRITE_END
!endif

!ifndef REG_START_MENU
CreateDirectory "$SMPROGRAMS\Done"
CreateShortCut "$SMPROGRAMS\Done\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\Done\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!endif

WriteRegStr ${REG_ROOT} "${REG_APP_PATH}" "" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayName" "${APP_NAME}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "UninstallString" "$INSTDIR\uninstall.exe"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayIcon" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayVersion" "${VERSION}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "Publisher" "${COMP_NAME}"

!ifdef WEB_SITE
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "URLInfoAbout" "${WEB_SITE}"
!endif
SectionEnd

######################################################################

Section Uninstall
${INSTALL_TYPE}
Delete "$INSTDIR\api-ms-win-core-console-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-datetime-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-debug-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-errorhandling-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-file-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-file-l1-2-0.dll"
Delete "$INSTDIR\api-ms-win-core-file-l2-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-handle-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-heap-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-interlocked-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-libraryloader-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-localization-l1-2-0.dll"
Delete "$INSTDIR\api-ms-win-core-memory-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-namedpipe-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-processenvironment-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-processthreads-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-processthreads-l1-1-1.dll"
Delete "$INSTDIR\api-ms-win-core-profile-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-rtlsupport-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-string-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-synch-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-synch-l1-2-0.dll"
Delete "$INSTDIR\api-ms-win-core-sysinfo-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-timezone-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-core-util-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-conio-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-convert-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-environment-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-filesystem-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-heap-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-locale-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-math-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-process-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-runtime-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-stdio-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-string-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-time-l1-1-0.dll"
Delete "$INSTDIR\api-ms-win-crt-utility-l1-1-0.dll"
Delete "$INSTDIR\base_library.zip"
Delete "$INSTDIR\Done.exe"
Delete "$INSTDIR\Formating.txt"
Delete "$INSTDIR\libcrypto-1_1.dll"
Delete "$INSTDIR\libssl-1_1.dll"
Delete "$INSTDIR\python39.dll"
Delete "$INSTDIR\select.pyd"
Delete "$INSTDIR\ucrtbase.dll"
Delete "$INSTDIR\unicodedata.pyd"
Delete "$INSTDIR\VCRUNTIME140.dll"
Delete "$INSTDIR\_bz2.pyd"
Delete "$INSTDIR\_decimal.pyd"
Delete "$INSTDIR\_hashlib.pyd"
Delete "$INSTDIR\_lzma.pyd"
Delete "$INSTDIR\_socket.pyd"
Delete "$INSTDIR\_ssl.pyd"
 
 
Delete "$INSTDIR\uninstall.exe"
!ifdef WEB_SITE
Delete "$INSTDIR\${APP_NAME} website.url"
!endif

RmDir "$INSTDIR"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_GETFOLDER "Application" $SM_Folder
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\$SM_Folder"
!endif

!ifndef REG_START_MENU
Delete "$SMPROGRAMS\Done\${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\Done\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\Done"
!endif

DeleteRegKey ${REG_ROOT} "${REG_APP_PATH}"
DeleteRegKey ${REG_ROOT} "${UNINSTALL_PATH}"
SectionEnd

######################################################################

