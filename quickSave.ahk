^Escape::
	MsgBox, AutoHotkey was exited.
	ExitApp
Return

^1::
	Send ^s
Return

^2::
	Send !s
	Sleep, 2000
	Send ^w
Return