#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; "THE BEER-WARE LICENSE" (Revision 42):
; <xiphe@gmx.de> wrote this file. As long as you retain this notice you
; can do whatever you want with this stuff. If we meet some day, and you think
; this stuff is worth it, you can buy me a beer in return Hannes Diercks
; ----------------------------------------------------------------------------

#Include %A_AppData%\AutoHotkey\Config.ahk 
; Windows XP:
;	C:\Docs&Settings\Username\AppData(hidden)\AutoHotkey\Config.ahk
; Windows Vista / 7
;	C:\Users\Username\AppData(hidden)\Roaming\AutoHotkey\Config.ahk


#Include %A_ScriptDir%\includes\Strings.ahk
#Include %A_ScriptDir%\includes\Functions.ahk
#Include %A_ScriptDir%\includes\FindFFTab.ahk
#Include %A_ScriptDir%\includes\Programms.ahk
#Include %A_ScriptDir%\includes\Searches.ahk
#Include %A_ScriptDir%\includes\Shorttags.ahk
#Include %A_ScriptDir%\includes\Shortcuts.ahk

;///////////////////////////////////////// RESTART
#r::
{
SetTitleMatchMode 2
	MsgBox, 4, ,restart Autohotkey ?
		IfMsgBox, Yes
		Reload
Return
}