@echo off

color 0A
echo                ===========injectlog===========
:start
cls

set current_dir=%~dp0
pushd %current_dir%

:start
echo.请输入要注入LOG的逆向工程名称（对于ak，是apk 的文件名）
set /p inputgc=

if not exist .\projects\%inputgc%\ (
echo "工程文件夹不存在" 
goto start
 )

xcopy smalihook.py /y .\projects\%inputgc%\Project\smali\
set do_dir=.\projects\%inputgc%\Project\smali\
pushd %do_dir%

call python.exe smalihook.py
del smalihook.py

pushd %current_dir%

xcopy InjectLog.smali /y .\projects\%inputgc%\Project\smali\com\hook\testsmali\


if exist .\projects\%inputgc%\Project\smali_classes2\ (
	echo "存在dex2，继续处理" 
	rem goto starttwo

 ) else (
	goto done
)

:done
echo "已处理完毕" 
pause
exit

:starttwo
xcopy smalihook.py /y .\projects\%inputgc%\Project\smali_classes2\
set did_dir=.\projects\%inputgc%\Project\smali_classes2\
pushd %did_dir%
call python.exe smalihook.py
del smalihook.py
pushd %current_dir%
xcopy InjectLog.smali /y .\projects\%inputgc%\Project\smali_classes2\com\hook\testsmali\
goto done
