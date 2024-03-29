
@echo off
cls
:menu
cls
color 0f
title MUDAR IP de Rota
mode con cols=91
mode con lines=40
set data=%date:~0,2%/%date:~3,2%/%date:~6,4%

echo  =========================================================================================
echo  :                                    MARINTER TELECOM                                   :
echo  :                            MUDAR IP de Rota Automaticamente                     v2.6  :
echo  =========================================================================================
echo                                                                                 %data%
echo  Escolha uma ROTA ou OPCAO:
REM echo. 
echo     -----------------      -----------------      -----------------      -----------------
echo   1 :   AEDUARDO    :   11 :   ELISA       :   21 :   MOMBUCAF    :   31 :   PRACA5      :
echo     -----------------      -----------------      -----------------      -----------------
echo   2 :   ARACATIBA   :   12 :   FLAMENGO 1  :   22 :   MOMBUCA2F   :   32 :   PRACAOBP    :
echo     -----------------      -----------------      -----------------      -----------------
echo   3 :   BEVERLY     :   13 :   FLAMENGO 2  :   23 :   PEDREIRAS   :   33 :   PRACASMS    :
echo     -----------------      -----------------      -----------------      -----------------
echo   4 :   BOAVISTA    :   14 :   FLAMENGO 3  :   24 :   PELDORADOF  :   34 :   RAPHAVILLE  :
echo     -----------------      -----------------      -----------------      -----------------
echo   5 :   BOQUEIRAO 1 :   15 :   HVARELLA    :   25 :   PELDORADO2F :   35 :   UBATIBA 1   :
echo     -----------------      -----------------      -----------------      -----------------
echo   6 :   BOQUEIRAO 2 :   16 :   ITAPEBA 1   :   26 :   PIQUETE     :   36 :   UBATIBA 2   :
echo     -----------------      -----------------      -----------------      -----------------
echo   7 : BOSQUEITAPEBA :   17 :   ITAPEBA 2   :   27 :   PNANCY 1    :   37 :   UBATIBA 3   :
echo     -----------------      -----------------      -----------------      -----------------
echo   8 :   CONDADO     :   18 :   ITAPEBAF    :   28 :   PNANCY 2    :   38 :   GUARATIBA   :
echo     -----------------      -----------------      -----------------      -----------------
echo   9 :   CORDEIRINHO :   19 :   MARQUES     :   29 :   PNANCY 3    :   39 :   SAOJOSE     :
echo     -----------------      -----------------      -----------------      -----------------
echo  10 :   DIVINEIA    :   20 :   METROPOLE   :   30 :   PNEGRA      :
echo     -----------------      -----------------      -----------------
echo.
echo       ------------------------       --------------------------
echo   100 :       VER O MAC      :   400 :  INSERIR DNS MARINTER  :
echo       ------------------------       --------------------------
echo   200 :       VER O IP       :   (---:    opcoes 200 e 300    :
echo       ------------------------       :   precisam que o CABO  :
echo   300 :  IP AUTOMATICO/DHCP  :   (---: esteja CONECTADO AO PC :
echo       ------------------------       --------------------------
REM echo   400 : INSERIR DNS MARINTER :
REM echo       ------------------------
echo    0  :         SAIR         :
echo       ------------------------
REM echo.
REM echo.
echo.
set /p opcao= Digite uma Opcao: 
echo ------------------------------
REM ===== opcoes para MUDAR IP =====
if %opcao% equ 100 goto opcao100
if %opcao% equ 200 goto opcao200
if %opcao% equ 300 goto opcao300
if %opcao% equ 400 goto opcao400
if %opcao% equ 0 goto opcao0
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% equ 11 goto opcao11
if %opcao% equ 12 goto opcao12
if %opcao% equ 13 goto opcao13
if %opcao% equ 14 goto opcao14
if %opcao% equ 15 goto opcao15
if %opcao% equ 16 goto opcao16
if %opcao% equ 17 goto opcao17
if %opcao% equ 18 goto opcao18
if %opcao% equ 19 goto opcao19
if %opcao% equ 20 goto opcao20
if %opcao% equ 21 goto opcao21
if %opcao% equ 22 goto opcao22
if %opcao% equ 23 goto opcao23
if %opcao% equ 24 goto opcao24
if %opcao% equ 25 goto opcao25
if %opcao% equ 26 goto opcao26
if %opcao% equ 27 goto opcao27
if %opcao% equ 28 goto opcao28
if %opcao% equ 29 goto opcao29
if %opcao% equ 30 goto opcao30
if %opcao% equ 31 goto opcao31
if %opcao% equ 32 goto opcao32
if %opcao% equ 33 goto opcao33
if %opcao% equ 34 goto opcao34
if %opcao% equ 35 goto opcao35
if %opcao% equ 36 goto opcao36
if %opcao% equ 37 goto opcao37
if %opcao% equ 38 goto opcao38
if %opcao% equ 39 goto opcao39
REM ===== opcoes para MANUTENCAO =====
if %opcao% equ reboot goto reb
if %opcao% equ cln goto cln
if %opcao% equ cln01 goto cln01
if %opcao% equ cln02 goto cln02
if %opcao% equ cln03 goto cln03
if %opcao% equ cln04 goto cln04
if %opcao% equ cln05 goto cln05
if %opcao% equ cln06 goto cln06
if %opcao% equ cln07 goto cln07
if %opcao% equ cln08 goto cln08
if %opcao% equ cln09 goto cln09
if %opcao% equ cln10 goto cln10
REM ======= DEMAIS OPCOES =======
if %opcao% GEQ 40 goto opcao40

:opcao100
cls
mode con cols=110
mode con lines=51
echo.
echo                                :                 :
echo                                :       MAC       :
echo                                :                 :
echo.
getmac/v | find "Ethernet"
echo                                :                 :
echo                                :       MAC       :
echo                                :                 :
echo.
echo.
pause
goto menu

:opcao200
cls
mode con cols=80
mode con lines=51
ipconfig
echo.
echo.
echo ===============================================
echo *                                             *
echo *    Verifique o IP do Adaptador Ethernet     *
echo *                                             *
echo ===============================================
echo.
echo.
pause
goto menu

:opcao300
cls
netsh interface ip set address "Ethernet" dhcp
netsh interface ip set dns "Ethernet" dhcp
echo.
echo.
echo =========================================
echo *                                       *
echo *      Atribuidos IP e DNS em DHCP      *
echo *                                       *
echo =========================================
echo.
echo.
pause
goto menu

:opcao400
cls
ipconfig /flushdns
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
goto dns

:dns
cls
echo.
echo.
echo.
echo =====================================
echo *                                   *
echo *      Atribuidos DNS MARINTER      *
echo *                                   *
echo =====================================
echo.
echo.
pause
goto menu

:cln
cls
mode con cols=98
mode con lines=40
echo.
echo      =====================================================================
echo      :                                                                   :
echo      :                        FERRAMENTAS DE REDE                        :
echo      :                                                                   :
echo      =====================================================================
echo.
echo      Segue abaixo alguns comando padroes para limpeza da rede, ja pre-configurados
echo      basta digitar o codigo no menu anterior. Ex: cln02
echo.
echo        --------------------------------------------------------------------------------------
echo  cln01 :  IPCONFIG /RELEASE  :    Liberar o PC do numero de IP
echo        --------------------------------------------------------------------------------------
echo  cln02 :  IPCONFIG /FLUSHDNS  :   Limpa e redefine o conteudo do cache do DNS
echo        --------------------------------------------------------------------------------------
echo  cln03 :  IPCONFIG /REGISTERDNS  :    Registra o ip do Computador no DNS
echo        --------------------------------------------------------------------------------------
echo  cln04 :  NBTSTAT -RR  :   Envia pacotes de liberacao de nomes para WINs e inicia atualizacao
echo        --------------------------------------------------------------------------------------
echo  cln05 :  NETSH INT IP RESET C:\RESET.LOG  :   Reinicia ou renova o protocolo TCP/IP
echo        --------------------------------------------------------------------------------------
echo  cln06 :  NETSH INT IP RESET ALL  :    Reinicia ou renova o protocolo TCP/IP
echo        --------------------------------------------------------------------------------------
echo  cln07 :  NETSH WINSOCK RESET  :   Reparar uma chave de registro Winsock, reinstalando-a
echo        --------------------------------------------------------------------------------------
echo  cln08 :  NETSH FIREWALL RESET  :   Reseta o firewall
echo        --------------------------------------------------------------------------------------
echo  cln09 :  NETSH WINHTTP RESET PROXY  :   Redefine o proxy WinHTTP
echo        --------------------------------------------------------------------------------------
echo  cln10 :  NBTSTAT -R  :   Limpa e recarrega a tabela de nomes de caches remotas
echo        --------------------------------------------------------------------------------------
echo.
echo           -----------------------------
echo    reboot :  REINCIAR EM 5 SEGUNDOS   :
echo           -----------------------------
REM echo       400 :  INSERIR DNS DA MARINTER  :  - EM FASE DE TESTES -
REM echo           -----------------------------
echo.
echo Escolha uma opcao e DIGITE no menu ANTERIOR
pause
echo.
goto menu

:opcao0
cls
exit

:opcao1
cls
netsh interface ip set address "Ethernet" static 10.5.1.126 255.255.255.128 10.5.1.1
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota AEDUARDO    *
echo *                                        *
echo ==========================================
pause
goto menu

:opcao2
cls
netsh interface ip set address "Ethernet" static 10.3.4.254 255.255.255.128 10.3.4.129
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota ARACATIBA    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao3
cls
netsh interface ip set address "Ethernet" static 10.4.3.254 255.255.255.128 10.4.3.129
echo.
echo.
echo =========================================
echo *                                       *
echo *    IP alterado para a Rota BEVERLY    *
echo *                                       *
echo =========================================
echo.
pause
goto menu

:opcao4
cls
netsh interface ip set address "Ethernet" static 10.3.5.254 255.255.255.128 10.3.5.129
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota BOAVISTA    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao5
cls
netsh interface ip set address "Ethernet" static 10.2.1.254 255.255.255.128 10.2.1.129
echo.
echo.
echo =============================================
echo *                                           *
echo *    IP alterado para a Rota BOQUEIRAO 1    *
echo *                                           *
echo =============================================
echo.
pause
goto menu

:opcao6
cls
netsh interface ip set address "Ethernet" static 10.2.2.254 255.255.255.128 10.2.2.129
echo.
echo.
echo =============================================
echo *                                           *
echo *    IP alterado para a Rota BOQUEIRAO 2    *
echo *                                           *
echo =============================================
echo.
pause
goto menu

:opcao7
cls
netsh interface ip set address "Ethernet" static 10.4.1.254 255.255.255.128 10.4.1.129
echo.
echo.
echo ===============================================
echo *                                             *
echo *    IP alterado para a Rota BOSQUEITAPEBA    *
echo *                                             *
echo ===============================================
echo.
pause
goto menu

:opcao8
cls
netsh interface ip set address "Ethernet" static 10.6.1.254 255.255.255.128 10.6.1.129
echo.
echo.
echo =========================================
echo *                                       *
echo *    IP alterado para a Rota CONDADO    *
echo *                                       *
echo =========================================
echo.
pause
goto menu

:opcao9
cls
netsh interface ip set address "Ethernet" static 10.3.7.126 255.255.255.128 10.3.7.1
echo.
echo.
echo =============================================
echo *                                           *
echo *    IP alterado para a Rota CORDEIRINHO    *
echo *                                           *
echo =============================================
echo.
pause
goto menu

:opcao10
cls
netsh interface ip set address "Ethernet" static 10.2.3.254 255.255.255.128 10.2.3.129
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota DIVINEIA    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao11
cls
netsh interface ip set address "Ethernet" static 10.4.2.254 255.255.255.128 10.4.2.129
echo.
echo.
echo =======================================
echo *                                     *
echo *    IP alterado para a Rota ELISA    *
echo *                                     *
echo =======================================
echo.
pause
goto menu

:opcao12
cls
netsh interface ip set address "Ethernet" static 10.5.9.126 255.255.255.128 10.5.9.1
echo.
echo.
echo ============================================
echo *                                          *
echo *    IP alterado para a Rota FLAMENGO 1    *
echo *                                          *
echo ============================================
echo.
pause
goto menu

:opcao13
cls
netsh interface ip set address "Ethernet" static 10.6.2.254 255.255.255.128 10.6.2.129
echo.
echo.
echo ============================================
echo *                                          *
echo *    IP alterado para a Rota FLAMENGO 2    *
echo *                                          *
echo ============================================
echo.
pause
goto menu

:opcao14
cls
netsh interface ip set address "Ethernet" static 10.2.4.126 255.255.255.128 10.2.4.1
echo.
echo.
echo ============================================
echo *                                          *
echo *    IP alterado para a Rota FLAMENGO 3    *
echo *                                          *
echo ============================================
echo.
pause
goto menu

:opcao15
cls
netsh interface ip set address "Ethernet" static 10.5.7.126 255.255.255.128 10.5.7.1
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota HVARELLA    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao16
cls
netsh interface ip set address "Ethernet" static 10.6.3.254 255.255.255.128 10.6.3.129
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota ITAPEBA 1    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao17
cls
netsh interface ip set address "Ethernet" static 10.7.1.254 255.255.255.128 10.7.1.129
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota ITAPEBA 2    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao18
cls
netsh interface ip set address "Ethernet" static 10.4.6.126 255.255.255.128 10.4.6.1
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota ITAPEBAF    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao19
cls
netsh interface ip set address "Ethernet" static 10.4.4.254 255.255.255.128 10.4.4.129
echo.
echo.
echo =========================================
echo *                                       *
echo *    IP alterado para a Rota MARQUES    *
echo *                                       *
echo =========================================
echo.
pause
goto menu

:opcao20
cls
netsh interface ip set address "Ethernet" static 10.3.1.254 255.255.255.128 10.3.1.129
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota METROPOLE    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao21
cls
netsh interface ip set address "Ethernet" static 10.5.2.254 255.255.255.128 10.5.2.129
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota MOMBUCAF    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao22
cls
netsh interface ip set address "Ethernet" static 10.4.5.254 255.255.255.128 10.4.5.129
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota MOMBUCA2F    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao23
cls
netsh interface ip set address "Ethernet" static 10.5.3.254 255.255.255.128 10.5.3.129
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota PEDREIRAS    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao24
cls
netsh interface ip set address "Ethernet" static 10.5.4.126 255.255.255.128 10.5.4.1
echo.
echo.
echo ============================================
echo *                                          *
echo *    IP alterado para a Rota PELDORADOF    *
echo *                                          *
echo ============================================
echo.
pause
goto menu

:opcao25
cls
netsh interface ip set address "Ethernet" static 10.5.5.126 255.255.255.128 10.5.5.1
echo.
echo.
echo =============================================
echo *                                           *
echo *    IP alterado para a Rota PELDORADO2F    *
echo *                                           *
echo =============================================
echo.
pause
goto menu

:opcao26
cls
netsh interface ip set address "Ethernet" static 10.6.4.254 255.255.255.128 10.6.4.129
echo.
echo.
echo =========================================
echo *                                       *
echo *    IP alterado para a Rota PIQUETE    *
echo *                                       *
echo =========================================
echo.
pause
goto menu

:opcao27
cls
netsh interface ip set address "Ethernet" static 10.7.3.126 255.255.255.128 10.7.3.1
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota PNANCY 1    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao28
cls
netsh interface ip set address "Ethernet" static 10.3.2.254 255.255.255.128 10.3.2.129
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota PNANCY 2    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao29
cls
netsh interface ip set address "Ethernet" static 10.3.11.254 255.255.255.128 10.3.11.129
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota PNANCY 3    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao30
cls
netsh interface ip set address "Ethernet" static 10.2.5.126 255.255.255.128 10.2.5.1
echo.
echo.
echo ========================================
echo *                                      *
echo *    IP alterado para a Rota PNEGRA    *
echo *                                      *
echo ========================================
echo.
pause
goto menu

:opcao31
cls
netsh interface ip set address "Ethernet" static 10.3.6.254 255.255.255.128 10.3.6.129
echo.
echo.
echo ========================================
echo *                                      *
echo *    IP alterado para a Rota PRACA5    *
echo *                                      *
echo ========================================
echo.
pause
goto menu

:opcao32
cls
netsh interface ip set address "Ethernet" static 10.3.3.126 255.255.255.128 10.3.3.1
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota PRACAOBP    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao33
cls
netsh interface ip set address "Ethernet" static 10.5.6.126 255.255.255.128 10.5.6.1
echo.
echo.
echo ==========================================
echo *                                        *
echo *    IP alterado para a Rota PRACASMS    *
echo *                                        *
echo ==========================================
echo.
pause
goto menu

:opcao34
cls
netsh interface ip set address "Ethernet" static 10.4.7.16 255.255.255.128 10.4.7.1
echo.
echo.
echo ============================================
echo *                                          *
echo *    IP alterado para a Rota RAPHAVILLE    *
echo *                                          *
echo ============================================
echo.
pause
goto menu

:opcao35
cls
netsh interface ip set address "Ethernet" static 10.3.8.126 255.255.255.128 10.3.8.1
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota UBATIBA 1    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao36
cls
netsh interface ip set address "Ethernet" static 10.3.9.126 255.255.255.128 10.3.9.1
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota UBATIBA 2    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao37
cls
netsh interface ip set address "Ethernet" static 10.3.10.254 255.255.255.128 10.3.10.129
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota UBATIBA 3    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao38
cls
netsh interface ip set address "Ethernet" static 10.7.7.126 255.255.255.128 10.7.7.1
echo.
echo.
echo ===========================================
echo *                                         *
echo *    IP alterado para a Rota GUARATIBA    *
echo *                                         *
echo ===========================================
echo.
pause
goto menu

:opcao39
cls
netsh interface ip set address "Ethernet" static 10.7.8.126 255.255.255.128 10.7.8.1
echo.
echo.
echo =========================================
echo *                                       *
echo *    IP alterado para a Rota SAOJOSE    *
echo *                                       *
echo =========================================
echo.
pause
goto menu

:cln01
cls
echo.
echo ======================================
echo *                                    *
echo *    Liberar o PC do numero de IP    *
echo *                                    *
echo ======================================
echo.
ipconfig /release
echo.
pause
goto cln

:cln02
cls
echo.
echo =======================================================
echo *                                                     *
echo *    Limpar e redefinir o conteudo do cache do DNS    *
echo *                                                     *
echo =======================================================
echo.
ipconfig /flushdns
echo.
pause
goto cln

:cln03
cls
echo.
echo ============================================
echo *                                          *
echo *    Registrar o ip do Computador no DNS   *
echo *                                          *
echo ============================================
echo.
ipconfig /registerdns
echo.
pause
goto cln

:cln04
cls
echo.
echo ==============================================
echo *                                            *
echo *    Enviar pacotes de liberacao de nomes    *
echo *      para WINs e iniciar atualizacao       *
echo *                                            *
echo ==============================================
echo.
nbtstat -rr
echo.
pause
goto cln

:cln05
cls
echo.
echo ==============================================================
echo *                                                            *
echo *    Reiniciar/renovar o protocolo TCP/IP de c:\reset.log    *
echo *                                                            *
echo ==============================================================
echo.
netsh int ip reset c:\reset.log
echo.
pause
goto cln

:cln06
cls
echo.
echo ======================================================
echo *                                                    *
echo *    Reiniciar/renovar todos os protocolos TCP/IP    *
echo *                                                    *
echo ======================================================
echo.
netsh int ip reset all
echo.
pause
goto cln

:cln07
cls
echo.
echo ==================================================
echo *                                                *
echo *     Reparar uma chave de registro Winsock      *
echo *    danificada ou corrompida, reinstalando-a    *
echo *                                                *
echo ==================================================
echo.
netsh winsock reset
echo.
pause
goto cln

:cln08
cls
echo.
echo ============================
echo *                          *
echo *    Resetar o firewall    *
echo *                          *
echo ============================
echo.
netsh firewall reset
echo.
pause
goto cln

:cln09
cls
echo.
echo ==================================
echo *                                *
echo *    Redefine o proxy WinHTTP    *
echo *                                *
echo ==================================
echo.
netsh winhttp reset proxy
echo.
pause
goto cln

:cln10
cls
echo.
echo ================================================================
echo *                                                              *
echo *    Limpar e recarregar a tabela de nomes de caches remotas   *
echo *                                                              *
echo ================================================================
echo.
nbtstat -r
echo.
pause
goto cln

:reb
cls
echo.
echo ===================================
echo *                                 *
echo *    Reiniciando em 5 segundos    *
echo *                                 *
echo ===================================
echo.
shutdown /r /t 5 /c "APP MARINTER TELECOM                           Reiniciando em 5 Segundos..."
echo.
pause
goto cln

:opcao40
cls
echo.
echo.
echo =====================================================
echo *                                                   *
echo *    Opcao Invalida!!! Escolha uma opcao do menu    *
echo *                                                   *
echo =====================================================
echo.
pause
goto menu