@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user takdungdungjes DundungJes301 /add >nul
net localgroup administrators takdungdungjes /add >nul
echo To change another VM region, Create New organization (Your current VM location:  %LO% )
echo Region Available: West Europe, Central US, East Asia, Brazil South, Canada Central, Autralia East, UK South, South India
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Rerun failed jobs to get a new RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, please paste new NGROK TOKEN in YML. Check Tunnel here: https://dashboard.ngrok.com/status/tunnels " && exit 
echo User: takdungdungjes
echo Pass: DundungJes301
curl -O https://gitlab.com/haithuongpro2711/haivps/-/raw/master/Files/DisablePasswordComplexity.ps1 > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://gitlab.com/haithuongpro2711/haivps/-/raw/master/Files/FastConfigVPS_v5.1.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\EVKey Vietnamese Keyboard.exe" https://gitlab.com/haithuongpro2711/haivps/-/raw/master/Files/EVKey64.exe > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant takdungdungjes:F >nul
ICACLS C:\Windows\installer /grant takdungdungjes:F >nul
ping -n 999999 10.10.10.10 >nul
