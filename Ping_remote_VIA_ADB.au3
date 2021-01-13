#include <AutoItConstants.au3>
#include <Date.au3>
#include <ScreenCapture.au3>

;Speed test on Sony Xperia
;Start Vysor and place the vysor window to the right upper side of the screen

;Switching to Vysor window
Send("{LWIN}")
Send("cmd {ENTER}"); Starting CMD window
WinWait("[CLASS:ConsoleWindowClass]")
Send("cd c:\adb {ENTER}")
Send("adb shell ping -c 5 8.8.8.8 {ENTER}")
Sleep(10000)
WinClose("[CLASS:ConsoleWindowClass]")