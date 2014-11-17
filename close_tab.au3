#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.10.2
 Author:         Jefferson Silva

 Script Function:
	Links the DELETE key to CTRL+F4. So, it get easier to close browser tabs.

#ce ----------------------------------------------------------------------------

; key that will be used as the shortcut
Global $key = "{DELETE}"

Func close_tab()
	; if broser windows is active
	If StringInStr(WinGetTitle("[active]"), "Google Chrome") <> 0 Then
		; send the "close" command
		Send("^{F4}")
	Else
		; send the "original" key
		Send($key)
	EndIf
EndFunc

Func terminate()
	Exit
EndFunc

HotKeySet($key, "close_tab")
HotKeySet("{ESC}", "terminate")

While 1
	Sleep(10)
WEnd