#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; "THE BEER-WARE LICENSE" (Revision 42):
; <xiphe@gmx.de> wrote this file. As long as you retain this notice you
; can do whatever you want with this stuff. If we meet some day, and you think
; this stuff is worth it, you can buy me a beer in return Hannes Diercks
; ----------------------------------------------------------------------------

;///////////////////////////////////////// Sonderzeichen


#7:: ;convert marked string to 1337 :P
{
temp := ClipboardAll
Sleep,100
Send ^c
StringCaseSense Off
work := clipboard
StringReplace work, work, a, 4, all
StringReplace work, work, b, |3, all
StringReplace work, work, c, [, all
StringReplace work, work, d, |), all
StringReplace work, work, e, 3, all
StringReplace work, work, f, |=, all
StringReplace work, work, g, 6, all
StringReplace work, work, h, |-|, all
StringReplace work, work, i, !, all
StringReplace work, work, j, ), all
StringReplace work, work, k, |<, all
StringReplace work, work, l, 1, all
StringReplace work, work, m, /\/\, all
StringReplace work, work, n, |\|, all
StringReplace work, work, o, 0, all
StringReplace work, work, p, |°, all
StringReplace work, work, q, 0_, all
StringReplace work, work, r, |2, all
StringReplace work, work, s, 5, all
StringReplace work, work, t, 7, all
StringReplace work, work, u, |_|, all
StringReplace work, work, v, |/, all
StringReplace work, work, w, VV, all
StringReplace work, work, x, ><, all
StringReplace work, work, z, 2, all
clipboard := work
Send ^v
Clipboard := temp
return
}

;Additional Signs

RAlt & c::
{
Send ©
}
Return

RAlt & r::
{
Send ®
}
Return

#<::
{
Send «
}
Return
#+<::
{
Send »
}
Return

RAlt & y::
{
Send ¥
}
Return

RAlt & t::
{
Send ™
}
Return 

RAlt & .::
{
	Send •

}
Return


;///////////////////////////////////////// NEXT HOTSTRING
RAlt & n::
{
MarkHotString()
}
return

;///////////////////////////////////////// DEFUSE HOTRING
RAlt & h::
{
temp := ClipboardAll
Sleep 100
Clipboard :=
Send ^c
Theclip := Clipboard
StringReplace Theclip,Theclip,__,,All
Clipboard := Theclip
Sleep 100
Send ^v
Theclip =
Clipboard := temp
temp =

}
return

;///////////////////////////////////////// WEBNAMES
#w::
{
SetTitleMatchMode 2

temp := ClipboardAll
Sleep,100
Clipboard =
Send, ^c
Theclip := Clipboard
    StringReplace, Theclip, Theclip, %A_SPACE%, _, All
	StringLower, Theclip, Theclip
	StringReplace, Theclip, Theclip, ä, ae, All
	StringReplace, Theclip, Theclip, ö, oe, All
	StringReplace, Theclip, Theclip, ü, ue, All
	StringReplace, Theclip, Theclip, Ä, ae, All
	StringReplace, Theclip, Theclip, Ö, oe, All
	StringReplace, Theclip, Theclip, Ü, ue, All
	StringReplace, Theclip, Theclip, ß, ss, All
	StringReplace, Theclip, Theclip, (, -, All
	StringReplace, Theclip, Theclip, ), , All	
	
Clipboard := Theclip
Send, ^v
Clipboard := temp
Return
}

;///////////////////////////////////////// &auml;
RAlt & 6::
{
SetTitleMatchMode 2

temp := ClipboardAll
Sleep,100
Clipboard =
Send, ^c
Theclip := Clipboard
	StringReplace, Theclip, Theclip, ä, &auml;, All
	StringReplace, Theclip, Theclip, ö, &ouml;, All
	StringReplace, Theclip, Theclip, ü, &uuml;, All
	StringReplace, Theclip, Theclip, Ä, &Auml;, All
	StringReplace, Theclip, Theclip, Ö, &Ouml;, All
	StringReplace, Theclip, Theclip, Ü, &Uuml;, All
	StringReplace, Theclip, Theclip, ß, &szlig;, All
	
Clipboard := Theclip
Send, ^v
Clipboard := temp
Return
}

;///////////////////////////////////////// escape "
#2::
{
SetTitleMatchMode 2

temp := ClipboardAll
Sleep,100
Clipboard =
Send, ^c
Theclip := Clipboard
	StringReplace, Theclip, Theclip, ", \", All	
Clipboard := Theclip
Send, ^v
Clipboard := temp
Return
}


;///////////////////////////////////////// ä;
RAlt & ä::
{
SetTitleMatchMode 2

temp := ClipboardAll
Sleep,100
Clipboard =
Send, ^c
Theclip := Clipboard
	StringReplace, Theclip, Theclip, &auml;, ä, All
	StringReplace, Theclip, Theclip, &ouml;, ö, All
	StringReplace, Theclip, Theclip, &uuml;, ü, All
	StringReplace, Theclip, Theclip, &Auml;, Ä, All
	StringReplace, Theclip, Theclip, &Ouml;, Ö, All
	StringReplace, Theclip, Theclip, &Uuml;, Ü, All
	StringReplace, Theclip, Theclip, &szlig;, ß, All
	
Clipboard := Theclip
Send, ^v
Clipboard := temp
Return
}

;///////////////////////////////////////// Strlen;
RAlt & l::
{
SetTitleMatchMode 2

temp := ClipboardAll
Sleep,100
Clipboard =
Send, ^c
Theclip := Clipboard
Output =
Length := StrLen(Theclip)
Theclip =
SplashTextOn,,,Buchstaben: %Length%,
Sleep, 2000
SplashTextOff
Length =
Send, ^v
Clipboard := temp
temp =
Return
}

;///////////////////////////////////////// Lowercase;
RAlt & Down::
{
SetTitleMatchMode 2

temp := ClipboardAll
Sleep,100
Clipboard =
Send, ^c
Theclip := Clipboard
Output =
StringLower, Output, Theclip
Theclip =
Clipboard := Output
Output =
Send, ^v
Clipboard := temp
temp =
Return
}

;///////////////////////////////////////// Uppercase;
RAlt & UP::
{
SetTitleMatchMode 2

temp := ClipboardAll
Sleep,100
Clipboard =
Send, ^c
Theclip := Clipboard
Output =
StringUpper, Output, Theclip
Theclip =
Clipboard := Output
Output =
Send, ^v
Clipboard := temp
temp =
Return
}

;///////////////////////////////////////// Titleform;
RAlt & Right::
{
SetTitleMatchMode 2

temp := ClipboardAll
Sleep,100
Clipboard =
Send, ^c
Theclip := Clipboard
Output =
StringLower, Output, Theclip, T
Theclip =
Clipboard := Output
Output =
Send, ^v
Clipboard := temp
temp =
Return
}

#c::
{
temp := ClipboardAll
Sleep,100
Clipboard =
Send, ^c
Theclip := Clipboard

r := Calculate(Theclip)
msgBox %r%

Theclip =
Clipboard := temp
temp =
Return
}

; 1+1

;///////////////////////////////////////// Localhost;
#h::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
Sleep 300
if WinExist("Mozilla Firefox") {
	WinActivate, Mozilla Firefox
	Sleep 100
	Send ^t
	Send ^l
	Send http://localhost/
	Send {Enter}
}
Return
}

;///////////////////////////////////////// Pos1 + End
^Left::
{
Send {Home}
Return
}
^Right::
{
Send {End}
Return
}
+Left::
{
Send +{Home}
Return
}
+Right::
{
Send +{End}
Return
}

