#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; "THE BEER-WARE LICENSE" (Revision 42):
; <xiphe@gmx.de> wrote this file. As long as you retain this notice you
; can do whatever you want with this stuff. If we meet some day, and you think
; this stuff is worth it, you can buy me a beer in return Hannes Diercks
; ----------------------------------------------------------------------------


; This works best if you use the pinned Firefox TabApps and order them by the number at function arg 2

;TabSearch("Text in input window", Tab Number (Max 8 i think), "String to identify the Tab (part of the <title>", "The Search Url ([search] will be replaced by the Searchword)")

; //////////////////////////// GOOGLE
#ö::
{
TabSearch("Google Suche", 3, "Google", "http://www.google.de/search?q=[search]")
return
}
; //////////////////////////// WIKIPEDIA
#ä::
{
TabSearch("Wikipedia Suche", 4, "Wikipedia", "http://de.wikipedia.org/wiki/[search]")
return
}
; //////////////////////////// LEO
#ü::
{
TabSearch("Leo Übersetzung", 5, "dict.leo.org", "http://dict.leo.org/?search=[search]")
return
}
; //////////////////////////// PHP
#+::
{
TabSearch("PHP Suche", 6, "PHP:", "http://de.php.net/manual-lookup.php?pattern=[search]&lang=de")
return
}
; //////////////////////////// Wordpress
##::
{
TabSearch("Wordpress Suche", 7, "Search", "http://wordpress.org/search/[search]")
return
}
