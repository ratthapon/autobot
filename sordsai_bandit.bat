# 900 1600
for /L %%n in (1,0,10) do (
  adb -s 127.0.0.1:5555 shell input tap 700 1300
  timeout /t 1 > NUL
  adb -s 127.0.0.1:5555 shell input tap 450 1550
  timeout /t 1 > NUL
  adb -s 127.0.0.1:5555 shell input tap 450 800
  timeout /t 1 > NUL
  adb -s 127.0.0.1:5555 shell input tap 450 1100
  timeout /t 1 > NUL
  adb -s 127.0.0.1:5555 shell input tap 400 1100
  timeout /t 1 > NUL
  adb -s 127.0.0.1:5555 shell input tap 450 200
  timeout /t 1 > NUL
  adb -s 127.0.0.1:5555 shell input tap 800 1550
  timeout /t 5 > NUL
)
