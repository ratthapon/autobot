@echo off
REM screen size 900 1600
REM farm.bat 127.0.0.1:5565 4 300
for /L %%m in (1,0,2) do (
  for /L %%n in (1,1,%2) do (
    echo Deploy squad %%n of instance %1 to farming
    adb -s %1 shell input tap %TAP_SEARCH_MODE%
    timeout 4 > NUL
    adb -s %1 shell input tap %TAP_SEARCH%
    timeout 4 > NUL
    adb -s %1 shell input tap %TAP_SELECT_TARGET%
    timeout 4 > NUL
    adb -s %1 shell input tap %TAP_CAPTURE_ACTION%
    timeout 4 > NUL
    REM adb -s %1 shell input tap %TAP_QUICK_SELECT%
    REM timeout 3 > NUL
    adb -s %1 shell input tap %TAP_DEPLOY%
    timeout 4 > NUL
    adb -s %1 shell input tap %TAP_SEARCH_MODE%
    timeout 1 > NUL
  )

  echo Trying reconnect
  adb -s %1 shell input tap %TAP_SEARCH_MODE%
  timeout 4 > NUL
  adb -s %1 shell input tap 600 900
  timeout 4 > NUL
  adb -s %1 shell input tap %TAP_SEARCH_MODE%
  timeout 1 > NUL

  echo Waiting for %3 second.
  for /L %%k in (0,10,%3) do (
    echo %%k out of %3
    timeout 10 > NUL
  )
)
