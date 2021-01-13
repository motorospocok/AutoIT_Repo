#include <AutoItConstants.au3>
#include <Date.au3>
#include <ScreenCapture.au3>

;Speed test on Sony Xperia
;Start Vysor and place the vysor window to the right upper side of the screen

;Switching to Vysor window
WinActivate ("[CLASS:Chrome_WidgetWin_1]"); Activate Vysor window
Local $hWnd = WinWait("[CLASS:Chrome_WidgetWin_1]", "", 10)
WinMove($hWnd, "", 1400, 0)
MouseClick($MOUSE_CLICK_LEFT, 1843, 519  , 2) ;Starting Speedtest
Sleep(2000)
MouseClick($MOUSE_CLICK_LEFT, 1683, 356, 2) ;Clicking on the GO
Sleep(50000)

$filename = _NowDate()
;                         String     Find Replace
$filename = StringReplace($filename, "/", ".")
$filename = StringReplace($filename, ".", "_")
; I'm guessing fixed location wants the cursor off
;                      Filepath      \    Filename    .Type   x1  y1  x2  y2   Capture Mouse Cursor
_ScreenCapture_Capture(@ScriptDir & "\" & "SpeedTest_" & $filename & ".jpg", 1418,89,1906,243, False)

MouseClick($MOUSE_CLICK_LEFT, 1435, 105, 2) ;Close restult window
MouseClick($MOUSE_CLICK_LEFT, 1660, 1005, 2) ;Back Vysor Home screen
