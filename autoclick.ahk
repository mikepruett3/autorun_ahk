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
;~w::
   ;Toggle := false
;return

; Include tools.ahk script
#Include %A_LineFile%\..\tools.ahk