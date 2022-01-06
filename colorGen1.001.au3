#include <Color.au3>


HotKeySet("{INS}","gen")
HotKeySet("{END}","quit")


Global $rank ,$perstige,$alpha, $quality,$nColor =1
Local $aColor[3] = [0 , 0 , 0]


Func quit()
	Exit
EndFunc


Func gen()
$rank = Int(Random(0,255,1))
$quality = Int(Random(0,255,1))
$perstige = Random(0,1,1)
if($perstige == 0) Then
	;;;;white
$rank = 0
$quality = Int(Random(0,$rank,1))
$alpha = Int($rank-$quality)
$aColor[0] = $quality
$aColor[1] = $quality
$aColor[2] = $quality
ElseIf($perstige == 1) Then
	;;;; blue
$rank = Int(Random(250,255,1))
$quality = Int(Random(0,255,1))
$aColor[0] = 0
$alpha = Int($rank-$quality)
if($alpha < 0 ) Then
	$aColor[1] = 0
Else
	$aColor[1] = $alpha
EndIf
$aColor[2] = Int(255-$quality)

ElseIf($perstige == 2) Then
	;;; green
Else
	;;;red
EndIf
ClipPut(Hex($nColor,6))
$nColor = _ColorSetCOLORREF($aColor)
ClipPut(Hex($nColor,6))
ConsoleWrite("P:"& $perstige & @CRLF)
ConsoleWrite("R:"& $rank & @CRLF)
ConsoleWrite("Q:"& $quality & @CRLF)
ConsoleWrite(Hex($perstige,2) & Hex($rank,2) & Hex($quality,2) & @CRLF)
ConsoleWrite(Hex($nColor,6) & @CRLF)
EndFunc

While 1
WEnd
