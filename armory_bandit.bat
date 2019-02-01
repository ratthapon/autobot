# 900 1600
for /L %%n in (1,0,10) do (
  echo %CONNECTED_DEVICE_2%
  adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_SEARCH_MODE%
  timeout 1 > NUL
  adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_SEARCH_MODE%
  timeout 4 > NUL
  adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_SEARCH%
  timeout /t 3 > NUL
  adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_SELECT_TARGET%
  timeout /t 3 > NUL
  adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_ATTACK%
  timeout /t 3 > NUL
REM  adb -s %CONNECTED_DEVICE_2% shell input tap 400 1100
REM  timeout /t 3 > NUL
  adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_FORMATION_1%
  timeout /t 3 > NUL
  adb -s %CONNECTED_DEVICE_2% shell input tap %TAP_DEPLOY%
  timeout /t 3 > NUL
)
