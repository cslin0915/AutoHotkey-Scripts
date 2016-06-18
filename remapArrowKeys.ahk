; use regular expressions for matching titles
SetTitleMatchMode,RegEx
SetTimer,AutoEnable,500
Suspended = 0

^Escape::
  MsgBox, AutoHotkey was exited.
  ExitApp
Return

; the following keys doesn't work for windows with titles starting with emacs
#IfWinNotActive, ahk_exe sublime_text.exe
{
  <!d::SendInput, {Down}

  <!e::SendInput, {Up}

  <!f::SendInput, {Right}

  <!s::SendInput, {Left}

  <!`;::SendInput, {BS}

  <!l::SendInput, {PgUp}

  <!.::SendInput, {PgDn}

  <!k::SendInput, {Home}

  <!,::SendInput, {End}
}

AutoEnable:
  IfWinActive, ahk_exe sublime_text.exe
  {
    if (suspended = 0)
    {
      Suspend,On
      suspended = 1
    }
  }
  Else
  {
    if (suspended = 1)
    {
      Suspend,Off
      suspended = 0
    }
  }
return
