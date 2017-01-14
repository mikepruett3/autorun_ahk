

Gui, +Resize
Gui, Show, w260 h100, Title
Gui, Add, Picture, vPic
return

ButtonLoadNewImage:
{
Gui, Submit, NoHide
ChromeImg = images\7d2d.jpg
#IfWinExist DayZ
;GuiControl,, Pic, *w%width% *h%height%, images\7d2d.jpg
Gui, Show, xCenter y0 AutoSize, images\7d2d.jpg
return
}

GuiClose:
ExitApp