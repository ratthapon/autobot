@echo off
REM screen size 900 1600
for /L %%n in (1,0,2) do (
  echo Launching Squad %%n
  adb -s %1 shell input tap %TAP_FAV%
  timeout 2 > NUL
  adb -s %1 shell input tap %TAP_FIRST_FAV%
  timeout 3 > NUL
  REM adb -s %1 shell input tap %TAP_SELECT_TARGET%
  REM timeout 2 > NUL
  adb -s %1 shell input tap %TAP_CAPTURE_ATTACK%
  timeout 1 > NUL
  adb -s %1 shell input tap 600 900
  timeout 1 > NUL
  adb -s %1 shell input tap %TAP_DEPLOY%
  timeout 1 > NUL
)
