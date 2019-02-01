# 900 1600
for /L %%n in (1,0,2) do (
  for /L %%n in (1,1,3) do (
    echo Launching Squad %%n to farm
    adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_SEARCH_MODE%
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_SEARCH%
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_SELECT_TARGET%
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_CAPTURE_ACTION%
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_QUICK_SELECT%
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_DEPLOY%
    timeout /t 5 > NUL
  )
  for /L %%n in (0,300,2400) do (
    timeout /t 300 > NUL
    echo %%n out of 3600
  )
)
