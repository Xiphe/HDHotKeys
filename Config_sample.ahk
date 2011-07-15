;Put this into the following dir and rename it to Config.ahk:
; Windows XP:
;	C:\Docs&Settings\Username\AppData(hidden)\AutoHotkey\Config.ahk
; Windows Vista / 7
;	C:\Users\Username\AppData(hidden)\Roaming\AutoHotkey\Config.ahk


BASE = "C:		; Drivekey for Applications Drive
PROGS = %BASE%\Programme		; Applications Folder
THUNDERBIRD = %PROGS%\Mozilla Thunderbird\thunderbird.exe"		;	Path to thunderbird.exe
INDESIGN = %PROGS%\"	;	Path to InDesign.exe
PHOTOSHOP = %PROGS%\"	;	Path to Photoshop.exe
ILLUSTRATOR = %PROGS%\"	;	Path to Illustrator.exe
FIREFOX = %PROGS%\"	;	Path to firefox.exe
NOTEPAD = %PROGS%\"	;	Path to notepad++.exe
FILEZILLA = %PROGS%\"	;	Path to filezilla.exe
APTANA = %PROGS%\"	;	Path to AptanaStudio3.exe
XAMPP = %BASE%\"	;	Path to xampp-control.exe
NAME = ; Name Used in MFG-String
AUTHORNAME = %NAME% ; Name Used in PHP-DOCUMENTATION Author
COPYNAME = %NAME% ; Name Used in PHP-DOCUMENTATION Copyright