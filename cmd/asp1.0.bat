@echo ------AUTHOR:liuxun@bjsasc.com----------
@echo ------aspƽ̨ǰ���Զ������ʼ--------
set drive=e:       
set filepath=\asppack
set DFpath=e:\asppack
set domain=10.0.32.99
%drive%
md %DFpath%
cd %filepath%
@echo off
set a= & set /p a=���Ƿ���Ҫ���¿�¡���룿YES/NO:
if "%a%"=="YES" (
	git clone git@%domain%:frontend/ASPPortal.git
	cd ASPPortal
	cmd /c "npm i"
	cmd /c "cnpm install gulp-sass"
	cmd /c "cnpm install gulp-webserver"
) else (
	cd ASPPortal 
	git pull
)
git checkout module
set /p asptag=������git��ǩ�� 
git tag %asptag%
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
start cmd /c "npm run apps"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd app
cmd /c "yarn"
@echo -------aspƽ̨�������-------------
@echo -------asptask�������START------------
set projectApp=taskApp
set project=task
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\ASPPortal\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------asptask�������END-------------------------------------------------------------------------------
@echo -------aspChat�������START------------
set projectApp=chatApp
set project=chat
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\ASPPortal\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspChat�������END-------------------------------------------------------------------------------
@echo -------aspSearch�������START------------
set projectApp=searchApp
set project=search
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspSearch�������END-----------------------------------------------------------------------------
@echo -------aspAppcenter�������START------------
set projectApp=appcenterApp
set project=appcenter
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspAppcenter�������END-----------------------------------------------------------------------------
@echo -------aspAppstore�������START------------
set projectApp=appstore
set project=appstore
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspAppstore�������END-----------------------------------------------------------------------------
@echo -------aspCalendar�������START------------
set projectApp=calendarApp
set project=calendar
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspCalendar�������END-----------------------------------------------------------------------------
@echo -------aspCollect�������START------------
set projectApp=collectApp
set project=collect
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspCollect�������END-----------------------------------------------------------------------------
@echo -------aspDeveloper�������START------------
set projectApp=developerApp
set project=developer
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspDeveloper�������END-----------------------------------------------------------------------------
@echo -------aspEmsmodel�������START------------
set projectApp=EMSEDITAPP
set project=emsmodel
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspEmsmodel�������END-----------------------------------------------------------------------------
@echo -------aspEmsviewer�������START------------
set projectApp=EMSVIEWER
set project=emsviewer
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspEmsviewer�������END-----------------------------------------------------------------------------
@echo -------aspNotification�������START------------
set projectApp=notificationApp
set project=notification
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspNotification�������END-----------------------------------------------------------------------------
@echo -------aspPortal�������START------------
set projectApp=portalApp
set project=portal
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspPortal�������END-----------------------------------------------------------------------------
@echo -------aspSettings�������START------------
set projectApp=settings
set project=settings
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspSettings�������END-----------------------------------------------------------------------------
@echo -------aspUsercenter�������START------------
set projectApp=usercenter
set project=usercenter
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspUsercenter�������END-----------------------------------------------------------------------------
@echo -------aspViewer�������START------------
set projectApp=viewerApp
set project=viewer
cd \
cd %filepath%
if "%a%"=="YES" (
	git clone git@%domain%:frontend/%projectApp%.git
	cd %projectApp%
) else(
	cd %projectApp%
	git pull
)
mklink /D node_modules %DFpath%\ASPPortal\node_modules
start cmd /c "gulp"
@echo �ȴ��´��ڵ�����ִ����ϣ������������ִ��
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspViewer�������END-----------------------------------------------------------------------------
cd \
cd %filepath%
cd ASPPortal
cmd /c "npm run dist"
@echo -----------------------------asp���END--------------------------------------------------------------------------