#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; AUTHOR: UNKNOWN (Please msg. Me <xiphe@gmx.de> || GitHib: Xiphe)
; FOUND ON: http://www.autohotkey.com/forum/topic21491.html



FindTabInActiveFirefox(TabName, SleepForTabSwitch=100)
{
   ; This function assumes that the Acvite window is a firefox window.
   ;
   ; A large delay like 400 seems to work best when heavy processing
   ; is going on.
   ;
   ; Returns true if tab is found, false if not found
   ;
   ; Limitations:
   ;
   ; Two tabs that have the same name will halt the tab search for that firefox
   ; window.  When looping over firefox tabs, it remembers the first tab name
   ; and uses that to determine when its finished looping.
   ;
   ; The delay value can be tweaky.  A loop with a small sleep might be better but
   ; given issues I had with FindInAnyFirefoxTab, I'll wait a bit.
   ;

   Settitlematchmode, 2
   WinGetActiveTitle, StartingTitle
   loop
   {
      ifWinActive, %TabName%
      {
         OutputDebug, FOUND!
         return true
      }
      else
      {
         Send {Control down}{Tab}{Control Up}
         }

      Sleep SleepForTabSwitch
     
      WinGetActiveTitle, CurrentTabTitle
      OutputDebug, Current Tab is %CurrentTabTitle%
      If (CurrentTabTitle == StartingTitle)
      {
         OutputDebug, BREAK! %CurrentTabTitle% %StartingTitle%
         break
      }
            
   }   
   
   return false
}

FindInAnyFirefoxTab(TabToFind, ByRef ReturnFoundId)
{
   ;
   ; Iterate over all firefox windows.  Within each window iterate over
   ; each tab.
   ;
   ; With lots of tabs and windows open this process can take a few
   ; seconds.  In order to optimize you can save (cache) the last found window id
   ; and it will jump to that one first to find it much quicker.  So the
   ; first find might be slow.  All other finds will be fast.
   ;
   ; Returns true if tab is found, false if not found
   ;
   ; Limitations:
   ;
   ; Two tabs that have the same name will halt the tab search for that firefox
   ; window.  When looping over firefox tabs, it remembers the first tab name
   ; and uses that to determine when its finished looping.
   ;
   
   SetTitleMatchMode 2

   ; First see if it is the currently active tab on any firefox windows
   IfWinExist %TabToFind%
   {
      WinActivate
      return true ;found without looping
   }

   ; Try the last known window id to be good
   IfWinExist ahk_id %ReturnFoundId%
   {
      ;OutputDebug, using cache value %ReturnFoundId%
      WinActivate
      WinWaitActive
      if (FindTabInActiveFirefox(TabToFind, 50))
      {
         return true ;found with cached value
      }
   }

   /* ; just some debug stuff
   Loop, %id%
   {
      StringTrimRight, this_id, id%a_index%, 0
      WinGetTitle, this_title, ahk_id %this_id%
      OutputDebug, PreTest ahk_id %this_id% id%a_index%, %this_title%
   }
   */

   ; Loop through all firefox windows and all tabs
   WinGet, id, list, Firefox, , Program Manager
   Loop, %id%
   {
      StringTrimRight, this_id, id%a_index%, 0
      WinActivate, ahk_id %this_id%
      ; WinGetClass, this_class, ahk_id %this_id%
      WinGetTitle, this_title, ahk_id %this_id%
      WinWaitActive, ahk_id %this_id%,,2
      if ErrorLevel
      {
         OutputDebug, WinWaitActive FAILED.
      }
      ; The previous WinWaitActive seems to fail sometimes. 
      ; The following fix does a couple of retrys and seems to mostly work, but slows things down
      ; when hit a bit. 
      TryCount = 0
      Loop
      {
         WinGetActiveTitle, StartingTitle
         if (StartingTitle <> this_title)
         {
            OutputDebug, ERROR! Trying to get %this_title%, GOT %StartingTitle%
            WinActivate, ahk_id %this_id%
            WinWaitActive, ahk_id %this_id%,,2
            ; I've never seen it take more than one try, but limit to 3
            TryCount++
            if (TryCount >= 3)
            {
               ;failed
               return false
            }
         }
         else
         {
            ; title matches - lets stop looping and continue on
            break
         }
      }
      ; OutputDebug, This is a test ahk_id %this_id% id%a_index%, Start Title is %StartingTitle%
      if (FindTabInActiveFirefox(TabToFind))
      {
         ReturnFoundId = %this_id%
         return true
      }
   }
   
   ; OutputDebug, Done
   return false
}