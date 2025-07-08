@echo off
net user suporte123 senha123 /add
net localgroup Administradores suporte123 /add
net user suporte123 /active:yes
echo Usuario administrador criado.
pause
