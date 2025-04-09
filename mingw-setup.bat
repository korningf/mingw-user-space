@rem  module:  mingw-setup.bat              mingw configurator
@rem project:  manufacture mingw            mingw.manufacture.net      
@rem author:   Francis Korning              <fkorning@yahoo.ca>
@rem rights:   (c) 2025 Francis Korning     manufacture.net
@rem license:  GNU LGPL license             https://www.gnu.org/licenses/lgpl.html


@rem echo off

@echo NOTE: do not forget to set the password for the administrator!
@echo NOTE: do not forget to set the password for user cyg_server!
@echo NOTE: do not forget to set the password for mysql root!


:CHECK
@echo checking for manufacture syswin sysinternals junction
if exist "c:/syswin/bin/junction.exe" goto SYSWIN
@echo ERROR: manufacture syswin is missing sysinternals junction. 
goto END


:SYSWIN
@echo SUCCESS manufacture syswin junction found. continuing install.


:CYGWIN
@rem CYGWIN="winsymlinks:native"
@rem  @set CYGWIN=c:/cygwin 
@rem  @setx CYGWIN c:/cygwin
@rem  @setx /m CYGWIN c:/cygwin


:ENVS
@echo installing manufacture mingw

@rem user-space gitbash mingw  
@if exist "%USERPROFILE%/AppData/Local/Programs/Git"   @set  MINGW="%USERPROFILE%/AppData/Local/Programs/Git"
@if exist "%USERPROFILE%/AppData/Local/Programs/Git"   @setx MINGW "%USERPROFILE%/AppData/Local/Programs/Git"

@rem shared-space gitbash mingw
@if exist "%PROGRAMFILES%/Git"  @set  MINGW="%PROGRAMFILES%/Git"
@if exist "%PROGRAMFILES%/Git"  @setx MINGW "%PROGRAMFILES%/Git"

@rem shared-space standalone mingw
@if exist "c:/MinGW"  @set  MINGW="c:/MinGW"
@if exist "c:/MinGW"  @setx MINGW "c:/MinGW"


:PATH
@rem todo: gtools pathed: add path to system path
@rem @set    PATH="c:/mingw;c:/mingw/bin;%PATH%"
@rem setx /m PATH "c:/mingw;c:/mingw/bin;%PATH%"



:CONFIG
@echo configuring manufacture mingw
set DIR=%CD%
@cd /




:DIRS:
@echo configuring syswin dirs
@if not exist "c:/syswin" md "c:/syswin"
@if not exist "c:/cygwin" md "c:/cygwin"
@if not exist "c:/mnt" md "c:/mnt"
@if not exist "c:/vault" md "c:/vault"
@if not exist "c:/work" md "c:/work"
@if not exist "c:/share" md "c:/share"


:ROOTS:
@echo configuring mingw junction roots
@if not exist "c:/mingw"           junction "c:/mingw"          "%MINGW%"
@if not exist "c:/mingw64"         junction "c:/mingw64"        "%MINGW%"
@if not exist "c:/cygwin/mingw"    junction "c:/cygwin/mingw"   "%MINGW%"
@if not exist "c:/cygwin/mingw64"  junction "c:/cygwin/mingw64" "%MINGW%"
@if not exist "%MINGW%/cygwin"     junction "%MINGW%/cygwin"    "c:/cygwin"
@if not exist "%MINGW%/cygwin64"   junction "%MINGW%/cygwin64"  "c:/cygwin"


    
:LINKS:
@echo configuring mingw junction links
@if not exist "c:/mingw/windows"   junction "c:/mingw/windows" "c:/windows"
@if not exist "c:/mingw/syswin"    junction "c:/mingw/syswin" "c:/syswin"
@if not exist "c:/mingw/cygwin"    junction "c:/mingw/cygwin" "c:/cygwin"
@if not exist "c:/mingw/mnt"       junction "c:/mingw/mnt" "c:/mnt"
@if not exist "c:/mingw/share"     junction "c:/mingw/share" "c:/share"
@if not exist "c:/mingw/vault"     junction "c:/mingw/vault" "c:/vault"
@if not exist "c:/mingw/users"     junction "c:/mingw/users" "c:/users"
@if not exist "c:/mingw/work"      junction "c:/mingw/work" "c:/work"


cd %DIR%
@echo manufacture mingw configured


:END
@echo done.
