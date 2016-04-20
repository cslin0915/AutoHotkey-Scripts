^Escape::
	MsgBox, AutoHotkey was exited.
	ExitApp
Return

^1::
  MouseClick, right ; right click on an image in chrome
  Sleep, 300
	Send v ; save image as ...
  Sleep, 300
  Send !s ; save file
Return

; ^2::
; 	Send !s
; 	Sleep, 2000
; 	Send ^w
; Return