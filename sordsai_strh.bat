# 900 1600
for /L %%n in (1,0,10) do (
  for /L %%n in (1,1,1) do (
    echo Launching Squad %%n to stronghold
    adb -s %CONNECTED_DEVICE_2% shell input tap 700 1300
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap 450 1550
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap 450 800
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap 600 800
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap 100 1550
    timeout /t %SUB_PROCESS_DELAY% > NUL
    adb -s %CONNECTED_DEVICE_2% shell input tap 800 1550
    timeout /t 5 > NUL
  )
  for /L %%n in (0,300,%PERIODIC%) do (
    timeout /t 300 > NUL
    echo %%n out of %PERIODIC%
  )
)
