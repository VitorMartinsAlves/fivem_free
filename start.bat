:loop
@echo off
color 0c
echo -
echo DELETANDO  A PASTA CACHE...
echo -
@REM rd /s /q "cache"
timeout 2
color 7
echo -
echo FXServer Startando VRP..
echo -
REM timeout 5
@echo (%time%)  Server Reiniciou
@echo Pressione Enter nesta janela para reiniciar o servidor imediatamente, mantenha esta janela aberta para reinicializacoes automaticas do servidor de 4 em 4 horas.
start artifacts\FXServer.exe +exec scripts.cfg +exec server.cfg  +set onesync on +set onesync_population true +set sv_enforceGameBuild 2372
@REM start artifacts\FXServer.exe +exec scripts.cfg +exec server.cfg  +set onesync on +set onesync_population false +set sv_enforceGameBuild 2372
timeout /t 28800
taskkill /f /im FXServer.exe
@echo Encerramento do servidor com sucesso.
timeout /t 2 >nul
taskkill /f /im "WindowTitle eq Server"
taskkill /f /im FiveM.exe
taskkill /f /im FiveM
@echo Servidor esta reiniciando agora.

goto loop

exit