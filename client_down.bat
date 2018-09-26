@ECHO OFF 

taskkill /im speederv2.exe /f
taskkill /im udp2raw.exe /f

ping -n 2 127.1 >nul