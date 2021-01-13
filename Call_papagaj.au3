#include <AutoItConstants.au3>
#include <Date.au3>
#include <ScreenCapture.au3>

;Speed test on Sony Xperia
;Start Vysor and place the vysor window to the right upper side of the screen

;Switching to Vysor window
WinActivate ("[CLASS:Chrome_WidgetWin_1]"); Activate Vysor window
Local $hWnd = WinWait("[CLASS:Chrome_WidgetWin_1]", "", 10)
WinMove($hWnd, "", 1400, 0)
Sleep(500)
MouseClick($MOUSE_CLICK_LEFT, 1844, 841  , 1) ;Click on phone icon
MouseClick($MOUSE_CLICK_LEFT, 1661, 827, 1) ;Clicking on Dial
MouseClick($MOUSE_CLICK_LEFT, 1608, 438, 1) ;Clicking on Number FIeld
Send("0036309419800") ; Dialing papagaj
Sleep(500)
MouseClick($MOUSE_CLICK_LEFT, 1660, 833, 1) ;Clicking on Calling field
Sleep(10000)
MouseClick($MOUSE_CLICK_LEFT, 1664, 837, 1) ;Clicking on ENDC all  field
MouseClick($MOUSE_CLICK_LEFT, 1659, 1002, 1) ;Clicking on Home Screen