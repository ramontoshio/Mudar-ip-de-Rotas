@echo off
cls
:menu
cls
color 0f
title MUDAR IP de Rota
mode con cols=75
mode con lines=70

echo.
	date /t
echo.
echo  =====================================================================
echo  :                         MARINTER TELECOM                          :
echo  :                 MUDAR IP de Rota Automaticamente                  :
echo  =====================================================================
echo.
echo.
echo  Escolha a ROTA:
echo. 
echo      -----------------       -----------------       -----------------
echo    1 :   AEDUARDO    :    14 :   FLAMENGO 3  :    27 :   PNANCY 1    :
echo      -----------------       -----------------       -----------------
echo    2 :   ARACATIBA   :    15 :   HVARELLA    :    28 :   PNANCY 2    :
echo      -----------------       -----------------       -----------------
echo    3 :   BEVERLY     :    16 :   ITAPEBA 1   :    29 :   PNANCY 3    :
echo      -----------------       -----------------       -----------------
echo    4 :   BOAVISTA    :    17 :   ITAPEBA 2   :    30 :   PNEGRA      :
echo      -----------------       -----------------       -----------------
echo    5 :   BOQUEIRAO 1 :    18 :   ITAPEBAF    :    31 :   PRACA5      :
echo      -----------------       -----------------       -----------------
echo    6 :   BOQUEIRAO 2 :    19 :   MARQUES     :    32 :   PRACAOBP    :
echo      -----------------       -----------------       -----------------
echo    7 : BOSQUEITAPEBA :    20 :   METROPOLE   :    33 :   PRACASMS    :
echo      -----------------       -----------------       -----------------
echo    8 :   CONDADO     :    21 :   MOMBUCAF    :    34 :   RAPHAVILLE  :
echo      -----------------       -----------------       -----------------
echo    9 :   CORDEIRINHO :    22 :   MOMBUCA2F   :    35 :   UBATIBA 1   :
echo      -----------------       -----------------       -----------------
echo   10 :   DIVINEIA    :    23 :   PEDREIRAS   :    36 :   UBATIBA 2   :
echo      -----------------       -----------------       -----------------
echo   11 :   ELISA       :    24 :   PELDORADOF  :    37 :   UBATIBA 3   :
echo      -----------------       -----------------       -----------------
echo   12 :   FLAMENGO 1  :    25 :   PELDORADO2F :  
echo      -----------------       ----------------- 
echo   13 :   FLAMENGO 2  :    26 :   PIQUETE     :  
echo      -----------------       ----------------- 
echo.
echo.
echo.
echo     ---------------------
echo  100:     VER O MAC     :
echo     ---------------------
echo  200:     VER O IP      :
echo     ---------------------
echo  300:   IP AUTOMATICO   :
echo     ---------------------
echo  400:       SAIR        :
echo     ---------------------
echo.
echo.
set /p opcao= Escolha uma Rota: 
echo ------------------------------
if %opcao% equ 100 goto opcao100
if %opcao% equ 200 goto opcao200
if %opcao% equ 300 goto opcao300
if %opcao% equ 400 goto opcao400
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
if %opcao% GEQ 38 goto opcao38

:opcao100
cls
mode con cols=110
mode con lines=70
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
exit

:opcao1
cls
netsh interface ip set address "Ethernet" static 10.5.1.126 255.255.255.128 10.5.1.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao2
cls
netsh interface ip set address "Ethernet" static 10.3.4.254 255.255.255.128 10.3.4.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao3
cls
netsh interface ip set address "Ethernet" static 10.4.3.254 255.255.255.128 10.4.3.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao4
cls
netsh interface ip set address "Ethernet" static 10.3.5.254 255.255.255.128 10.3.5.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao5
cls
netsh interface ip set address "Ethernet" static 10.2.1.254 255.255.255.128 10.2.1.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao6
cls
netsh interface ip set address "Ethernet" static 10.2.2.254 255.255.255.128 10.2.2.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao7
cls
netsh interface ip set address "Ethernet" static 10.4.1.254 255.255.255.128 10.4.1.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao8
cls
netsh interface ip set address "Ethernet" static 10.6.1.254 255.255.255.128 10.6.1.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao9
cls
netsh interface ip set address "Ethernet" static 10.3.7.126 255.255.255.128 10.3.7.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao10
cls
netsh interface ip set address "Ethernet" static 10.2.3.254 255.255.255.128 10.2.3.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao11
cls
netsh interface ip set address "Ethernet" static 10.4.2.254 255.255.255.128 10.4.2.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao12
cls
netsh interface ip set address "Ethernet" static 10.5.9.126 255.255.255.128 10.5.9.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao13
cls
netsh interface ip set address "Ethernet" static 10.6.2.254 255.255.255.128 10.6.2.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao14
cls
netsh interface ip set address "Ethernet" static 10.2.4.126 255.255.255.128 10.2.4.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao15
cls
netsh interface ip set address "Ethernet" static 10.5.7.126 255.255.255.128 10.5.7.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao16
cls
netsh interface ip set address "Ethernet" static 10.6.3.254 255.255.255.128 10.6.3.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao17
cls
netsh interface ip set address "Ethernet" static 10.7.1.254 255.255.255.128 10.7.1.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao18
cls
netsh interface ip set address "Ethernet" static 10.4.6.126 255.255.255.128 10.4.6.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao19
cls
netsh interface ip set address "Ethernet" static 10.4.4.254 255.255.255.128 10.4.4.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao20
cls
netsh interface ip set address "Ethernet" static 10.3.1.254 255.255.255.128 10.3.1.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao21
cls
netsh interface ip set address "Ethernet" static 10.5.2.254 255.255.255.128 10.5.2.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao22
cls
netsh interface ip set address "Ethernet" static 10.4.5.254 255.255.255.128 10.4.5.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao23
cls
netsh interface ip set address "Ethernet" static 10.5.3.254 255.255.255.128 10.5.3.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao24
cls
netsh interface ip set address "Ethernet" static 10.5.4.126 255.255.255.128 10.5.4.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao25
cls
netsh interface ip set address "Ethernet" static 10.5.5.126 255.255.255.128 10.5.5.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao26
cls
netsh interface ip set address "Ethernet" static 10.6.4.254 255.255.255.128 10.6.4.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao27
cls
netsh interface ip set address "Ethernet" static 10.7.3.126 255.255.255.128 10.7.3.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao28
cls
netsh interface ip set address "Ethernet" static 10.3.2.254 255.255.255.128 10.3.2.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao29
cls
netsh interface ip set address "Ethernet" static 10.3.11.254 255.255.255.128 10.3.11.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao30
cls
netsh interface ip set address "Ethernet" static 10.2.5.126 255.255.255.128 10.2.5.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao31
cls
netsh interface ip set address "Ethernet" static 10.3.6.254 255.255.255.128 10.3.6.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao32
cls
netsh interface ip set address "Ethernet" static 10.3.3.126 255.255.255.128 10.3.3.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao33
cls
netsh interface ip set address "Ethernet" static 10.5.6.126 255.255.255.128 10.5.6.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao34
cls
netsh interface ip set address "Ethernet" static 10.4.7.16 255.255.255.128 10.4.7.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao35
cls
netsh interface ip set address "Ethernet" static 10.3.8.126 255.255.255.128 10.3.8.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao36
cls
netsh interface ip set address "Ethernet" static 10.3.9.126 255.255.255.128 10.3.9.1
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao37
cls
netsh interface ip set address "Ethernet" static 10.3.10.254 255.255.255.128 10.3.10.129
netsh interface ip set dns "Ethernet" static 177.93.139.163
netsh interface ip add dns "Ethernet" 189.84.80.36
echo ==================================
echo *                                *
echo *    IP alterado para a Rota     *
echo *                                *
echo ==================================
pause
goto menu

:opcao38
echo =====================================================
echo *                                                   *
echo *    Opcao Invalida: Escolha outra opcao do menu    *
echo *                                                   *
echo =====================================================
pause
goto menu
