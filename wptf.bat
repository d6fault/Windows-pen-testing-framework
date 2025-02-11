@echo off
SETLOCAL ENABLEEXTENSIONS

REM Set colors for a better appearance
color 0A

echo.
echo ========================================
echo    ⠀⠀⠀⠀⠀⠆⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo    ⠀⠀⠀⠀⠐⢀⡙⠴⢖⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo    ⠀⠀⠀⠠⠀⠀⠀⣤⠘⢛⢻⣿⣧⣿⣿⣿⣿⣿⣤⣤⣀⣀⠀⠀⠀⠀⠀
echo    ⠀⠀⠠⠆⣀⠁⠤⠄⣘⠊⠦⢴⣿⣿⠉⠉⠉⣹⣿⠟⠻⢿⣿⣦⡀⠀⠀
echo    ⠀⠀⠀⢀⠉⠤⠄⣈⡘⠐⢡⣿⣿⠇⠀⠀⢠⣿⡏⠀⠀⠀⢸⣿⠁⠀⠀
echo    ⠀⠀⠀⡈⠠⠄⡈⠉⠽⠿⣿⣿⠿⠿⠿⣾⣿⣿⣤⣀⠀⣼⣿⡇⠀⠀⠀
echo    ⠰⠀⠀⠀⠶⠀⠀⠀⠁⢀⣿⣿⠁⠀⠀⢸⣿⠏⠹⢿⣿⣿⡿⠀⠀⠀⠀
echo    ⠀⠀⠋⣤⣄⣈⡈⠔⢰⣿⣿⠀⠀⠀⢠⣿⠃⠀⠀⠀⣼⣿⠃⠀⠀⠀⠀
echo    ⠀⠀⠀⠘⠛⠿⠿⣿⣿⣿⣿⣷⣶⣿⣇⡀⠀⠀⣼⣿⠃⠀⠀⠀⠀⠀⠀
echo    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠛⠿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀
echo    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⠀⠀⠀⠀⠀⠀⠀⠀
echo    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀
echo  Windows pen-testing framework Installation 🚀         
echo  Made by D6fault </>
echo 
echo 
echo.

REM 
set nmap_url=https://nmap.org/dist/nmap-7.92-setup.exe
set wireshark_url=https://2.na.dl.wireshark.org/win64/Wireshark-4.4.3-x64.exe
set metasploit_url=https://rapid7.com/products/metasploit/download/
set hashcat_url=https://github.com/hashcat/hashcat/releases/download/v6.2.6/hashcat-6.2.6.7z
set burpsuite_url=https://portswigger.net/burp/releases/download?product=community&version=2023.2.2&type=Windows
set ruby_url=https://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-3.1.2-1-x64.exe
set sqlmap_url=https://github.com/sqlmapproject/sqlmap/archive/master.zip
set feroxbuster_url=https://github.com/epi052/feroxbuster/releases/download/v2.11.0/x86_64-windows-feroxbuster.exe.zip
set nikto_url=https://github.com/sullo/nikto/releases/download/2.1.6/nikto-2.1.6.zip
set gobuster_url=https://github.com/OJ/gobuster/releases/download/v3.6.0/gobuster_Windows_x86_64.zip
set responder_url=https://github.com/SpiderLabs/Responder/archive/refs/heads/master.zip
set powersploit_url=https://github.com/PowerShellMafia/PowerSploit/archive/master.zip

REM 
echo Creating download directory...
mkdir "C:\PT_Tools\Downloads"
echo.

REM 
echo ========================================
echo Select tools to install:
echo 1. Nmap
echo 2. Wireshark
echo 3. Hashcat
echo 4. Burp Suite
echo 5. SQLMap
echo 6. Feroxbuster
echo 7. Nikto
echo 8. Gobuster
echo 9. Responder
echo 10. PowerSploit
echo 11. All (Recommended)
set /p choice="Enter your choice (1-11): "

REM 
if "%choice%"=="1" goto download_nmap
if "%choice%"=="2" goto download_wireshark
if "%choice%"=="3" goto download_hashcat
if "%choice%"=="4" goto download_burpsuite
if "%choice%"=="5" goto download_sqlmap
if "%choice%"=="6" goto download_feroxbuster
if "%choice%"=="7" goto download_nikto
if "%choice%"=="8" goto download_gobuster
if "%choice%"=="9" goto download_responder
if "%choice%"=="10" goto download_powersploit
if "%choice%"=="11" goto download_all

echo Invalid choice! Exiting...
goto end

:download_nmap
echo [1/11] Downloading Nmap...
curl -L %nmap_url% -o "C:\PT_Tools\Downloads\nmap-setup.exe"
goto download_wireshark

:download_wireshark
echo [2/11] Downloading Wireshark...
curl -L %wireshark_url% -o "C:\PT_Tools\Downloads\Wireshark-4.4.3-x64.exe"
goto download_hashcat

:download_hashcat
echo [3/11] Downloading Hashcat...
curl -L %hashcat_url% -o "C:\PT_Tools\Downloads\hashcat-6.2.6.7z"
goto download_burpsuite

:download_burpsuite
echo [4/11] Downloading Burp Suite Community...
curl -L %burpsuite_url% -o "C:\PT_Tools\Downloads\burpsuite_installer.exe"
goto download_sqlmap

:download_sqlmap
echo [5/11] Downloading SQLMap...
curl -L %sqlmap_url% -o "C:\PT_Tools\Downloads\sqlmap-master.zip"
goto download_feroxbuster

:download_feroxbuster
echo [6/11] Downloading Feroxbuster...
curl -L %feroxbuster_url% -o "C:\PT_Tools\Downloads\feroxbuster.zip"
goto download_nikto

:download_nikto
echo [7/11] Downloading Nikto...
curl -L %nikto_url% -o "C:\PT_Tools\Downloads\nikto-2.1.6.zip"
goto download_gobuster

:download_gobuster
echo [8/11] Downloading Gobuster...
curl -L %gobuster_url% -o "C:\PT_Tools\Downloads\gobuster.exe"
goto download_responder

:download_responder
echo [9/11] Downloading Responder...
curl -L %responder_url% -o "C:\PT_Tools\Downloads\Responder-v2.2.1.zip"
goto download_powersploit

:download_powersploit
echo [10/11] Downloading PowerSploit...
curl -L %powersploit_url% -o "C:\PT_Tools\Downloads\PowerSploit-master.zip"
goto download_complete

:download_all
echo [1/11] Downloading Nmap...
curl -L %nmap_url% -o "C:\PT_Tools\Downloads\nmap-setup.exe"
echo [2/11] Downloading Wireshark...
curl -L %wireshark_url% -o "C:\PT_Tools\Downloads\Wireshark-4.4.3-x64.exe"
echo [3/11] Downloading Hashcat...
curl -L %hashcat_url% -o "C:\PT_Tools\Downloads\hashcat-6.2.6.7z"
echo [4/11] Downloading Burp Suite Community...
curl -L %burpsuite_url% -o "C:\PT_Tools\Downloads\burpsuite_installer.exe"
echo [5/11] Downloading SQLMap...
curl -L %sqlmap_url% -o "C:\PT_Tools\Downloads\sqlmap-master.zip"
echo [6/11] Downloading Feroxbuster...
curl -L %feroxbuster_url% -o "C:\PT_Tools\Downloads\feroxbuster.zip"
echo [7/11] Downloading Nikto...
curl -L %nikto_url% -o "C:\PT_Tools\Downloads\nikto-2.1.6.zip"
echo [8/11] Downloading Gobuster...
curl -L %gobuster_url% -o "C:\PT_Tools\Downloads\gobuster.exe"
echo [9/11] Downloading Responder...
curl -L %responder_url% -o "C:\PT_Tools\Downloads\Responder-v2.2.1.zip"
echo [10/11] Downloading PowerSploit...
curl -L %powersploit_url% -o "C:\PT_Tools\Downloads\PowerSploit-master.zip"
goto download_complete

:download_complete
echo.
echo Tools downloaded successfully! Now installing...
echo.

REM 
echo Installing Ruby x64 with DevKit...
start /wait C:\PT_Tools\Downloads\rubyinstaller.exe /S

REM 
echo Installing selected tools...
start /wait C:\PT_Tools\Downloads\nmap-setup.exe /S
start /wait C:\PT_Tools\Downloads\Wireshark-4.4.3-x64.exe /S
start /wait C:\PT_Tools\Downloads\burpsuite_installer.exe /S
7z x C:\PT_Tools\Downloads\hashcat-6.2.6.7z -oC:\PT_Tools\Hashcat
7z x C:\PT_Tools\Downloads\sqlmap-master.zip -oC:\PT_Tools\SQLMap
7z x C:\PT_Tools\Downloads\feroxbuster.zip -oC:\PT_Tools\Feroxbuster
7z x C:\PT_Tools\Downloads\nikto-2.1.6.zip -oC:\PT_Tools\Nikto
7z x C:\PT_Tools\Downloads\Responder-v2.2.1.zip -oC:\PT_Tools\Responder
7z x C:\PT_Tools\Downloads\PowerSploit-master.zip -oC:\PT_Tools\PowerSploit

REM 
echo.
echo Cleaning up downloaded files...
del /q "C:\PT_Tools\Downloads\nmap-setup.exe"
del /q "C:\PT_Tools\Downloads\hashcat-6.2.6.7z"
del /q "C:\PT_Tools\Downloads\burpsuite_installer.exe"
del /q "C:\PT_Tools\Downloads\rubyinstaller.exe"
del /q "C:\PT_Tools\Downloads\Wireshark-4.4.3-x64.exe"
del /q "C:\PT_Tools\Downloads\sqlmap-master.zip"
del /q "C:\PT_Tools\Downloads\feroxbuster.zip"
del /q "C:\PT_Tools\Downloads\nikto-2.1.6.zip"
del /q "C:\PT_Tools\Downloads\gobuster.exe"
del /q "C:\PT_Tools\Downloads\Responder-v2.2.1.zip"
del /q "C:\PT_Tools\Downloads\PowerSploit-master.zip"
echo Cleanup complete.
echo.

echo ========================================
echo Installation completed. Please follow the manual steps for Wireshark and Metasploit.
echo Hashcat has been extracted to C:\PT_Tools\Hashcat
echo Burp Suite Community Edition has been installed.
echo SQLMap has been extracted to C:\PT_Tools\SQLMap
echo Feroxbuster has been extracted to C:\PT_Tools\Feroxbuster
echo Nikto has been extracted to C:\PT_Tools\Nikto
echo Gobuster has been installed and is ready to use.
pause

:end
exit
