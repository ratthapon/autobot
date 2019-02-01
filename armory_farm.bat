REM screen size 900 1600
for /L %%n in (1,0,2) do (
  for /L %%n in (1,1,%N_SQUADS%) do (
    echo Launching Squad %%n
    adb -s %CONNECTED_DEVICE% shell input tap %TAP_SEARCH_MODE%
    timeout /t 1 > NUL
    adb -s %CONNECTED_DEVICE% shell input tap %TAP_SEARCH_MODE%
    timeout /t 3 > NUL
    adb -s %CONNECTED_DEVICE% shell input tap %TAP_SEARCH%
    timeout /t 3 NUL
    adb -s %CONNECTED_DEVICE% shell input tap %TAP_SELECT_TARGET%
    timeout /t 3 NUL
    adb -s %CONNECTED_DEVICE% shell input tap %TAP_CAPTURE_ACTION%
    timeout /t 3 NUL
    REM adb -s %CONNECTED_DEVICE% shell input tap %TAP_QUICK_SELECT%
    REM timeout /t 3 NUL
    adb -s %CONNECTED_DEVICE% shell input tap %TAP_DEPLOY%
    timeout /t 3 NUL
  )
REM  for /L %%n in (0,300,%PERIODIC%) do (
REM    timeout /t 300 > NUL
REM    echo %%n out of %PERIODIC%
REM  )
)
