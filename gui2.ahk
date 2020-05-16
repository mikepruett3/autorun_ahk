#SingleInstance force
#NoEnv
SetBatchLines, -1

Gui, Add, Hotkey,   vHK gLabel     ;add a hotkey control
Gui, Add, CheckBox, vCB x+5, Win   ;add a checkbox to allow the Windows key (#) as a modifier.
Gui, Show,,Dynamic Hotkeys
return
GuiClose:
 ExitApp

Label:
 If HK in +,^,!,+^,+!,^!,+^!            ;If the hotkey contains only modifiers, return to wait for a key.
  return
 If (savedHK) {                         ;If a hotkey was already saved...
  Hotkey, %savedHK%, Label1, Off        ;     turn the old hotkey off
  savedHK .= " OFF"                     ;     add the word 'OFF' to display in a message.
 }
 If (HK = "") {                         ;If the new hotkey is blank...
  TrayTip, Label1, %savedHK%, 5         ;     show a message: the old hotkey is OFF
  savedHK =                             ;     save the hotkey (which is now blank) for future reference.
  return                                ;This allows an old hotkey to be disabled without enabling a new one.
 }
 Gui, Submit, NoHide
 If CB                                  ;If the 'Win' box is checked, then add its modifier (#).
  HK := "#" HK
 If StrLen(HK) = 1                      ;If the new hotkey is only 1 character, then add the (~) modifier.
  HK := "~" HK                          ;     This prevents any key from being blocked.
 Hotkey, %HK%, Label1, On               ;Turn on the new hotkey.
 TrayTip, Label1,% HK " ON`n" savedHK   ;Show a message: the new hotkey is ON.
 savedHK := HK                          ;Save the hotkey for future reference.
return

;This label may contain any commands for its hotkey to perform.
Label1:
   If (Switch := !Switch) {
       Send {LShift Down}
       Send {w Down}
   } Else {
       Send {LShift Up}
       Send {w up}
   }
Return
return