ReadUrl() {
	global
	InputBox, myUrl, Enter your url:
	if ErrorLevel
	{
		; MsgBox, Cancel was pressed.
		MyUrl := " "
	}
	else
	{
		MyUrl := myUrl
	}
}

ReadUrl2() {
	global
	InputBox, myUrl2, Enter your url2:
	if ErrorLevel
	{
		; MsgBox, Cancel was pressed.
		MyUrl2 := " "
	}
	else
	{
		MyUrl2 := myUrl2
	}
}

^Escape::
	MsgBox, AutoHotkey was exited.
	ExitApp
Return

^1::
	Send ^c
	bounty := clipboard
	global MyUrl, MyUrl2
	if MyUrl is not space
	{
		gotoUrl := MyUrl . "?bounty=" . bounty
		run % "chrome.exe --incognito " gotoUrl
	}
	if MyUrl2 is not space
	{
		gotoUrl := MyUrl2 . "?bounty=" . bounty
		run % "chrome.exe --incognito " gotoUrl
	}
Return

!1::
	ReadUrl()
	ReadUrl2()
Return
