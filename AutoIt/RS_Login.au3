#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.3.8.1
	Author:         B0T-Maker

	Script Function:
	Runescape Template Script

	Version: 0.01

#ce ----------------------------------------------------------------------------

#cs
	TODO:

#ce

;; Includes ;;
#include <Array.au3>

;; Hotkeys ;;
HotKeySet("{F1}", "_SetLoc")
HotKeySet("{F2}", "_ClickAll")
HotKeySet("{F3}", "_EnterName")
HotKeySet("{F4}", "_EnterEmail")
HotKeySet("{F5}", "_Talk")
HotKeySet("{F6}", "_Custom")
HotKeySet("{ESC}", "_Terminate")


Global $ClickArrayX[1]
Global $ClickArrayY[1]
Global $a = 1
Global $Name = "cl"
Global $Name2 = "@g.com"
Global $NameCounter = 1
Global $Password = "123123"
Global $Email = "ml"
Global $Email2 = "@123.com"

;;; Start Main Loop;;;
While 1

	Sleep(100)
WEnd
;;; End Main Loop;;;

func _Talk()
	send("Flash2:")
EndFunc

func _Custom()
Send("Lost Via Domus")
send("{ENTER}")
EndFunc


Func _EnterName()
	Send($Name & $NameCounter & $Name2)
	Send("{TAB}")
	Send($Password)
	$NameCounter += 1
EndFunc   ;==>_EnterName

Func _EnterEmail()


EndFunc   ;==>_EnterEmail


Func _SetLoc()
	_ArrayAdd($ClickArrayX, MouseGetPos(0))
	_ArrayAdd($ClickArrayY, MouseGetPos(1))
	ConsoleWrite(MouseGetPos(0) & ', ' & MouseGetPos(1) & @CRLF)
	ConsoleWrite($ClickArrayX[$a] & ', ' & $ClickArrayY[$a] & @CRLF)
	$a += 1
EndFunc   ;==>_SetLoc

Func _ClickAll()
	For $i = 1 To UBound($ClickArrayX) - 1
		MouseClick("left", $ClickArrayX[$i], $ClickArrayY[$i], 1, 0)
	Next
EndFunc   ;==>_ClickAll

Func _Terminate()
	Exit 0
EndFunc   ;==>_Terminate


