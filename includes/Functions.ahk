#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ----------------------------------------------------------------------------
; "THE BEER-WARE LICENSE" (Revision 42):
; <xiphe@gmx.de> wrote this file. As long as you retain this notice you
; can do whatever you want with this stuff. If we meet some day, and you think
; this stuff is worth it, you can buy me a beer in return Hannes Diercks
; ----------------------------------------------------------------------------


;///////////////////////////////////////// FUNCTIONS

; AUTHOR: UNKNOWN (Please msg. Me <xiphe@gmx.de> || GitHib: Xiphe)
GetHTML(url, line=""){	
   pwhr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
   pwhr.Open("GET",url)
   pwhr.Send()
   html := pwhr.ResponseText
   if not line
      return, html
   s := InStr(html, "`n", 0, 1, line-1)
   e := InStr(html, "`n", 0, s+1)
   return, SubStr(html, s, e-s)   
}

; ----------------------------------------------------------------------------
;Basics for Random Strings from "polyethene" at http://www.autohotkey.com/forum/topic18344.html
; ----------------------------------------------------------------------------

;Defaults generate a 16 chars long random string with numbers, chars and special signs.
RandomStr(l = 16, i = 33, x = 122) { ;length, lowest and highest Asc value
   Loop, %l% {
      Random, r, i, x
      s .= Chr(r)
   }
   Return, s
}
;Default generate a 16 chars long random alphanumeric string.
RandomStrAN(l = 16) { ; length
   Loop, %l% {
      Random, r, 0, 2
	  if (r == 0)
		Random, t, 65, 90
	  else if (r == 1)
	    Random, t, 97, 122
	  else
		Random, t, 48, 57
      s .= Chr(t)
   }
   Return, s
}
;Default generate a 16 chars long random string containing just wordchars.
RandomStrA(l = 16) { ; length
   Loop, %l% {
      Random, r, 0, 1
	  if (r == 0)
		Random, t, 65, 90
	  else
	    Random, t, 97, 122
      s .= Chr(t)
   }
   Return, s
}
;Default generate a 16 chars long random number.
RandomInt(l = 16) { ; length
   Loop, %l% {
      Random, r, 48, 57
      s .= Chr(r)
   }
   Return, s
}

;wrapping Function for GetHotLine
GetHotLineWrap(max = 5, i = 0) { ;maximal lines to go down, i have to be 0
	temp := ClipboardAll
	Sleep,100
	Send {END}
	info := GetHotLine()
	if(info != false) {
		Clipboard := temp
		temp =
		return info
	} else {
		i++
		if(i <= max) {
			Send {DOWN}
			return GetHotLineWrap(max, i)
		} else {
			Clipboard := temp
			temp =
			return false
		}
	}
}
;searches for a __foo__ string in a Line and returnes its position and length or fals if nothing found
GetHotLine(n = 1, innerstrlen = 15) { ;Press {Home} n times, max length of word inside the "__"
	Loop, %n% {
		send +{Home}
	}
	Clipboard =
	send ^c
	Theclip := Clipboard
	sleep 100
	FoundPos := RegExMatch(Theclip, "__(\w{0,%innerstrlen%})__", found)
	if(FoundPos <> 0) {
		r = %FoundPos%|%found%
		return r
	} else if(n <> 2)
		return GetHotLine(2)
	else
		return false
}
;Marks the Hotstring via the given Position of GetHotLine()
MarkHotString() {
	info := GetHotLineWrap()
	if (info != false) {
		stringsplit, array, info, |
		loop 
			if array%A_Index% {
				if (A_Index == 1) {
					pos := % array%A_Index%
				}
				if (A_Index == 2) {
					len := % array%A_Index%
					len := StrLen(len)
				}
			} else
			break
		Send {Left 2}
		Send {Right %pos%}
		Send +{Right %len%}
		len =
		pos =
		info =
	}
}

;Counts Tabs in the current line and returns a string with the correct amount of tabs
GetTabs(del = false, n = 1, try = true) { ; Tabs
	temp := ClipboardAll
	Sleep,100
	Clipboard =
	Loop, %n% {
		send +{Home}
	}
	send ^c
	Theclip := Clipboard
	sleep 100

	If (Theclip <> 0) {
		if(del) {
			Theclip := ConvertTabs(CountTabs(Theclip))
			Theclip .= Chr(32)
			Clipboard := Theclip
			sleep 100
			send ^v
		} else {
			send ^v
		}
	}

	Clipboard := temp
	temp =
	temp2 =
	tabCount := CountTabs(Theclip)
	if(tabCount == 0 && try == true) {
		return GetTabs(false, 2, false)
	}
	return ConvertTabs(tabCount)
}
;Counts the Tabs in the given String an returns the number
CountTabs(string) {
	StringReplace string,string,%A_Tab%,%A_Tab%,UseErrorLevel
	return %ErrorLevel%
}
;Generates a string with %count%*Tabs
ConvertTabs(count) {
	Loop, %count% {
		tabs .= Chr(9)
	}
	return %tabs%
}
;replaces each linebreak of the given string with a linebreak and the given tabs
TabStr(string, tabs) {
	StringReplace string,string,`n,`n%tabs%,All
	return string
}
;fastest output possible
Echo(string) {
	temp := ClipboardAll
	Sleep,100
	clipboard := string
	Send ^v
	Clipboard := temp
	temp =
	string =
}
;Searches for a given Tab in Firefox if FF is available and fires StartTabSearch(), if Tab was not found a new one is taken
;Used by the Search.ahk Shortcuts
TabSearchGetTab(tabNr, tabName, string, url)
{
SetTitleMatchMode 2
DetectHiddenWindows, On
	if WinExist("Mozilla Firefox") {
		WinActivate, Mozilla Firefox
		Sleep 100
		if WinActive(tabName) {
			return StartTabSearch(string, url)
		}
		Send ^%tabNr%
		Sleep 60
		if WinActive(tabName) {
			return StartTabSearch(string, url)
		} else if (FindTabInActiveFirefox(tabName)) {
			return StartTabSearch(string, url)
		} else {
			Send ^t
			return StartTabSearch(string, url)
		}
	}
}
;paste the specific searchword in the searchurl, activate adressbar and fire search
StartTabSearch(string, url) {
	StringReplace url,url,[search],%string%
	Clipboard := url
	Send ^l
	Sleep 100
	Send ^v
	Sleep 100
	Send {Enter}
}
;Check for marked string to search, and open input window if nothing was marked
TabSearch(cleanName, tabNr, tabName, url)
{
	;Save current Clipboard
	temp := ClipboardAll
	Sleep 100
	Clipboard =
	;Get Marked String
	Send, ^c
	search := Clipboard
	If search <>
		TabSearchGetTab(tabNr, tabName, search, url)
	else {
		Inputbox, search, %cleanName%,, , 300, 100
		if (ErrorLevel <> 0) {
			Exit
		} else {
			TabSearchGetTab(tabNr, tabName, search, url)
		}
	}
	Sleep 100
	Clipboard := temp
	temp =
}