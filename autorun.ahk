;Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv

;Recommended for new scripts due to its superior speed and reliability.
SendMode Input

; Include groups.ahk file
#Include %A_LineFile%\..\groups.ahk

#IfWinActive ahk_group AutoRun_CapsLock
$CapsLock::
   If (Switch := !Switch) {
       Send {LShift Down}
       Send {w Down}
   } Else {
       Send {LShift Up}
       Send {w up}
   }
Return

#IfWinActive ahk_group AutoRun_ShiftW
$+w::
   Toggle := true
   Send {w down}
   while (Toggle)
   Sleep, 10
   Send {w up}
return
$~w::
   Toggle := false
return

; Include reload.ahk script
#Include %A_LineFile%\..\reload.ahk