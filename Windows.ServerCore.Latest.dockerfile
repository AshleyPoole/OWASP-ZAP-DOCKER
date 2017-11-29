FROM microsoft/windowsservercore:latest

LABEL maintainer="git@ashleypoole.co.uk"

ADD SetPaths.ps1 .

RUN powershell -Command iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

RUN powershell (new-object System.Net.WebClient).Downloadfile('http://javadl.oracle.com/webapps/download/AutoDL?BundleId=210185', 'C:\jre-8u91-windows-x64.exe')
RUN powershell start-process -filepath C:\jre-8u91-windows-x64.exe -passthru -wait -argumentlist "/s,INSTALLDIR=c:\Java\jre1.8.0_91,/L,install64.log"
RUN del C:\jre-8u91-windows-x64.exe

RUN powershell ./SetPaths.ps1

RUN powershell choco install zap -y --ignore-dependencies