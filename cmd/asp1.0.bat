@echo ------AUTHOR:liuxun@bjsasc.com----------
@echo ------asp平台前端自动打包开始--------
set drive=e:       
set filepath=\asppack
set DFpath=e:\asppack
set domain=10.0.32.99
%drive%
md %DFpath%
cd %filepath%
@echo off
set a= & set /p a=你是否需要重新克隆代码？YES/NO:
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
set /p asptag=请输入git标签： 
git tag %asptag%
start cmd /c "gulp"
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
start cmd /c "npm run apps"
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd app
cmd /c "yarn"
@echo -------asp平台打包结束-------------
@echo -------asptask打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\ASPPortal\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------asptask打包测试END-------------------------------------------------------------------------------
@echo -------aspChat打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\ASPPortal\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspChat打包测试END-------------------------------------------------------------------------------
@echo -------aspSearch打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspSearch打包测试END-----------------------------------------------------------------------------
@echo -------aspAppcenter打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspAppcenter打包测试END-----------------------------------------------------------------------------
@echo -------aspAppstore打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspAppstore打包测试END-----------------------------------------------------------------------------
@echo -------aspCalendar打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspCalendar打包测试END-----------------------------------------------------------------------------
@echo -------aspCollect打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspCollect打包测试END-----------------------------------------------------------------------------
@echo -------aspDeveloper打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspDeveloper打包测试END-----------------------------------------------------------------------------
@echo -------aspEmsmodel打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspEmsmodel打包测试END-----------------------------------------------------------------------------
@echo -------aspEmsviewer打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspEmsviewer打包测试END-----------------------------------------------------------------------------
@echo -------aspNotification打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspNotification打包测试END-----------------------------------------------------------------------------
@echo -------aspPortal打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspPortal打包测试END-----------------------------------------------------------------------------
@echo -------aspSettings打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspSettings打包测试END-----------------------------------------------------------------------------
@echo -------aspUsercenter打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspUsercenter打包测试END-----------------------------------------------------------------------------
@echo -------aspViewer打包测试START------------
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
@echo 等待新窗口的命令执行完毕，按任意键继续执行
pause
cd dist
md %DFpath%\ASPPortal\app\browser\%project%
xcopy browser\* %DFpath%\ASPPortal\app\browser\%project%\ /s /h /c /y
rd /s /q browser
md %DFpath%\projectApp\app\shell\%project%
xcopy %DFpath%\%projectApp%\dist\* %DFpath%\ASPPortal\app\shell\%project%\ /s /h /c /y
@echo -------aspViewer打包测试END-----------------------------------------------------------------------------
cd \
cd %filepath%
cd ASPPortal
cmd /c "npm run dist"
@echo -----------------------------asp打包END--------------------------------------------------------------------------