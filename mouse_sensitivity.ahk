; The first parameter is always 0x71 (SPI_SETMOUSESPEED).
; The third parameter is the speed (range is 1-20, 10 is default).

F1::
DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, 3, UInt, 0)
KeyWait F1  ; This prevents keyboard auto-repeat from doing the DllCall repeatedly.
return

F1 up::DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, 10, UInt, 0)
