@echo off
echo    * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo    * * *  "BDIX  CHECKER" ________Created by Rokibul Roni  * * * 
echo    * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo.
    setlocal enabledelayedexpansion
    set OUTPUT_FILE=BDIX_TESTED_LIST.CSV
    >nul copy nul %OUTPUT_FILE%
    echo HOSTNAME,LONGNAME,IPADDRESS,STATE >%OUTPUT_FILE%
    for /f %%i in (lib\PHONIX\RONI\RONI\OSDROID\3\RONI\OSDROID\MODSOFTPRO\RANDOM-F\KIP-LOOP\BACK\BDIX_LIST.TXT) do (
        set SERVER_ADDRESS_I=NOT FOUND
        set SERVER_ADDRESS_L=404
        for /f "tokens=1,2,3" %%x in ('ping -n 1 %%i ^&^& echo SERVER_IS_UP') do (
        if %%x==Pinging set SERVER_ADDRESS_L=%%y
        if %%x==Pinging set SERVER_ADDRESS_I=%%z
            if %%x==SERVER_IS_UP (set SERVER_STATE= ----- ACCESS GRANTED ) else (set SERVER_STATE={DENIED}))
        echo    # %%i ----- !SERVER_ADDRESS_I::=! -----!SERVER_STATE!
        echo %%i,!SERVER_ADDRESS_L::=!,!SERVER_ADDRESS_I::=!,!SERVER_STATE! >>%OUTPUT_FILE% )
echo.
echo    * * * All Results are exported on "BDIX_TESTED_LIST.CSV" File * * * 
echo.
echo ___ Download the Latest Version of "B D I X  C H E C K E R" :: https://bit.ly/bdixchecker

set /p input=
