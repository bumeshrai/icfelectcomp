@echo off

rem -------------------------------------------------------------
rem  Yii command line script for Windows.
rem
rem  This is the bootstrap script for running yiic on Windows.
rem
rem  @author Qiang Xue <qiang.xue@gmail.com>
rem  @link http://www.yiiframework.com/
rem  @copyright Copyright &copy; 2008 Yii Software LLC
rem  @license http://www.yiiframework.com/license/
rem  @version $Id: yiic.bat 2 2008-09-28 12:03:53Z qiang.xue $
rem -------------------------------------------------------------

rem -------------------------------------------------------------
rem  Yii command from the old installation.
rem
rem  Try this if the original doesn't work
rem
rem -------------------------------------------------------------


rem @setlocal
rem
rem set YII_PATH=%CD%
rem
rem if "%PHP_COMMAND%" == "" set PHP_COMMAND=php.exe
rem
rem %PHP_COMMAND% "%YII_PATH%\yiic" %*
rem
rem @endlocal
rem



@setlocal

set YII_PATH=%~dp0

if "%PHP_COMMAND%" == "" set PHP_COMMAND=php.exe

%PHP_COMMAND% "%YII_PATH%yiic" %*

@endlocal