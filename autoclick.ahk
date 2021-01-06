;Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv

;Recommended for new scripts due to its superior speed and reliability.
;SendMode Input

; Include groups.ahk file
#Include %A_LineFile%\..\groups.ahk

#IfWinActive ahk_group AutoClick
^LButton::
   ;Toggle := true
   Click, Down
   ;while (Toggle)
   ;Sleep, 5
return

#IfWinActive ahk_group AutoClickHold
^LButton::
   While GetKeyState("CapsLock","T") {
      Click, Down
      Sleep, 1000
      Click, Up
      ;KeyIsDown := GetKeyState("CapsLock","T")
      ;If GetKeyState("CapsLock","T") {
      ;   Toggle := false
      ;}
   }
return

; Include tools.ahk script
#Include %A_LineFile%\..\tools.ahk