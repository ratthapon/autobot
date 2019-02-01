for /L %%n in (62002,2,62100) do (
  adb connect 127.0.0.1:%%n
)
