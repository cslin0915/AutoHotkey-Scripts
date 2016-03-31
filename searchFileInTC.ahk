^Escape::
	MsgBox, AutoHotkey was exited.
	ExitApp
Return

^1::
	Send ^c
	IfWinExist, Total Commander
	{
	    WinActivate ; use the window found above
		Send ^s ; Open Quick Filter dialog in tc
		Send ^a ; select all
		Send ^v ; paste
	}
Return

!1::
	Send !{ESC}
Return