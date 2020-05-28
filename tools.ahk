; Assign Ctrl-E as a hotkey to find ahk_exe name of current window
^e::
WinExist("A")
WinGet, ExeName, ProcessName
MsgBox, "%ExeName%"
Return

; Assign Ctrl-R as a hotkey to reload the script.
^r::
SplashTextOn, 200, 25,, Script has been reloaded!!
Sleep 500
Reload
SplashTextOff
Return