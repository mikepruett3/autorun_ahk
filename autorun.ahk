;Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv

;Recommended for new scripts due to its superior speed and reliability.
SendMode Input

#IfWinActive, 7 Days To Die
$CapsLock::
#IfWinActive, Arma 3
$CapsLock::
   If (Switch := !Switch) {
       Send {LShift Down}
       Send {w Down}
   } Else {
       Send {LShift Up}
       Send {w up}
   }
Return


#IfWinActive, DayZ
^r::
   If (Switch := !Switch) {
       Send {LShift Down}
       Send {w Down}
   } Else {
       Send {LShift Up}
       Send {w up}
   }
Return
^w::
   If (Switch := !Switch) {
       Send {w Down}
   } Else {
       Send {w up}
   }
Return