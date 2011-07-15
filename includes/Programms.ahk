#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;///////////////////////////////////////// XAMPP
#x::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	ifWinActive ahk_class XamppClass
	{
		WinMinimize
		WinHide
	} else {
		IfWinExist ahk_class XamppClass
		{
			WinActivate, ahk_class XamppClass
		} else {
			MsgBox, 4, , XAMPP starten?
			IfMsgBox, Yes
			Run, %XAMPP%
		}
	}
Return
}

;///////////////////////////////////////// APTANA
#a::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	if WinActive("- Aptana") {
		WinMinimize
	} else {
		If WinExist("- Aptana") {
			WinActivate, - Aptana
		} else {
			MsgBox, 4, , Aptana starten?
			IfMsgBox, Yes
			Run, %APTANA%
		}
	}
Return
}

;///////////////////////////////////////// THUNDERBIRD
#t::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	if WinActive("- Mozilla Thunderbird") {
		WinMinimize
	} else {
		If WinExist("- Mozilla Thunderbird") {
			WinActivate, - Mozilla Thunderbird
		} else {
			MsgBox, 4, , Thunderbird starten?
			IfMsgBox, Yes
			Run, %THUNDERBIRD%
		}
	}
Return
}

;///////////////////////////////////////// InDesign
#o::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	ifWinActive ahk_class indesign
	{
		WinMinimize
	} else {
		IfWinExist ahk_class indesign
		{
			WinActivate, ahk_class indesign
		} else {
			MsgBox, 4, , InDesign starten?
			IfMsgBox, Yes
			Run, %INDESIGN%
		}
	}
Return
}

;///////////////////////////////////////// Photoshop
#p::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	ifWinActive ahk_class Photoshop 
	{
		WinMinimize
	} else {
		IfWinExist ahk_class Photoshop 
		{
			WinActivate, ahk_class Photoshop
		} else {
			MsgBox, 4, , Photoshop starten?
			IfMsgBox, Yes
			Run, %PHOTOSHOP%
		}
	}
Return
}


;///////////////////////////////////////// Illustrator
#i::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	ifWinActive ahk_class illustrator 
	{
		WinMinimize
	} else {
		IfWinExist ahk_class illustrator 
		{
			WinActivate, ahk_class illustrator
		} else {
			MsgBox, 4, , Illustrator starten?
			IfMsgBox, Yes
			Run, %ILLUSTRATOR%
		}
	}
Return
}

;///////////////////////////////////////// FIREFOX
#f::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	if WinActive("Mozilla Firefox") {
		WinMinimize
	} else {
		If WinExist("Mozilla Firefox") {
			WinActivate, Mozilla Firefox
		} else {
			MsgBox, 4, , Mozilla Firefox starten?
			IfMsgBox, Yes
			Run, %FIREFOX%
		}
	}
	Return
}

;///////////////////////////////////////// NOTEPAD++
#n::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	if WinActive("- Notepad++") {
		WinMinimize
	} else {
		If WinExist("- Notepad++") {
			WinActivate, - Notepad++
		} else {
			MsgBox, 4, , Notepad++ starten?
			IfMsgBox, Yes
			Run, %NOTEPAD%
		}
	}
Return
}

;///////////////////////////////////////// FILEZILLA
#z::
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	if WinActive("FileZilla") {
		WinMinimize
	} else {
		If WinExist("FileZilla") {
			WinActivate, FileZilla
		} else {
			MsgBox, 4, , FileZilla starten?
			IfMsgBox, Yes
			Run, %FILEZILLA%
		}
	}
Return
}