@echo off
REM screen size 900 1600
for /L %%n in (1,0,2) do (
  echo Launching Squad %%n
  adb -s %1 shell input tap 740 100
  timeout 1 > NUL
  adb -s %1 shell input tap 410 400
  timeout 1 > NUL
  adb -s %1 shell input tap %TAP_SELECT_TARGET%
  timeout 1 > NUL
  adb -s %1 shell input tap %TAP_CAPTURE_ATTACK%
  timeout 1 > NUL
  adb -s %1 shell input tap %TAP_DEPLOY%
  timeout 1 > NUL
)
