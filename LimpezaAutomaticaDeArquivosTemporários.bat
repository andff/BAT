@echo off
echo Limpando arquivos temporarios...
del /s /q %temp%\*
rd /s /q %temp%
md %temp%
echo Limpeza concluida.
pause
