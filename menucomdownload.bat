@echo off
cls
:menu
cls
color 71
echo Usuario Logado:%username%                            Computador:%computername%
date /t  

echo  __________________________
echo     ESCOLHA UM APLICATIVO     
echo  1. ANYDESK           
echo  2. 7-ZIP
echo  3. SAIR               
echo __________________________ 
               
set /p opcao= Escolha uma opcao:
echo _______________________
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% GEQ 4 goto opcao4


:opcao1
cls
if exist "C:\Users\%username%\Downloads\Anydesk.exe" (
start C:\Users\%username%\Downloads\Anydesk.exe
pause
goto menu
) else (
bitsadmin /transfer AcessoRemoto /priority normal https://download.anydesk.com/AnyDesk.exe C:\Users\%username%\Downloads\Anydesk.exe
pause
start C:\Users\%username%\Downloads\Anydesk.exe
pause
goto menu
)

:opcao2
cls
if exist "C:\Program Files\7-Zip\7zFM.exe" (
start 7zFM.exe
pause
goto menu
) else (
bitsadmin /transfer instalador7zip /priority normal https://www.7-zip.org/a/7z2107-x64.exe C:\Users\%username%\Downloads\7zipSetup.exe
pause
start C:\Users\%username%\Downloads\7zipSetup.exe
pause
start 7zFM.exe
pause
goto menu
)


:opcao3
exit

:op4
cls
echo -----------------------------------
echo Opcao invalida! Escolha outra opcao
echo -----------------------------------
pause
goto menu