@echo off
netsh advfirewall firewall add rule name="Permitir Ping" protocol=icmpv4 dir=in action=allow
echo Regra de ICMP criada com sucesso!
pause