#include <AutoItConstants.au3>
#include <Date.au3>
#include <ScreenCapture.au3>

;Speed test on Sony Xperia
;Start Vysor and place the vysor window to the right upper side of the screen

;Switching to Vysor window

MouseClick($MOUSE_CLICK_LEFT, 695, 10  , 2) ;Starting Speedtest
Sleep(2000)
MouseClick($MOUSE_CLICK_LEFT, 356, 66  , 1) ;Starting Speedtest