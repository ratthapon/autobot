@echo off
REM 900 1600
REM bandit.bat 127.0.0.1:5565
for /L %%n in (1,0,10) do (
  echo Deploy squad %%n of instance %1 to kill bandit
  adb -s %1 shell input tap %TAP_SEARCH_MODE%
  timeout 1 > NUL
  adb -s %1 shell input tap %TAP_SEARCH_MODE%
  timeout 2 > NUL
  adb -s %1 shell input tap %TAP_SEARCH%
  timeout /t 3 > NUL
  adb -s %1 shell input tap %TAP_SELECT_TARGET%
  timeout /t 3 > NUL
  adb -s %1 shell input tap %TAP_ATTACK%
  timeout /t 2 > NUL
  adb -s %1 shell input tap %TAP_FORMATION_1%
  timeout /t 1 > NUL
  adb -s %1 shell input tap %TAP_DEPLOY%
  timeout /t 3 > NUL
)
