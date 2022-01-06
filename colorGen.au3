#include <Color.au3>

Local $aColor[3] = [0 , 0 , 0]
Local $perstige = (Random(0,2,1))
Local $rank = Int(Random(0,255,1))
Local $quality = Int(Random(0,255,1))


if($perstige == 0) Then
	;;;;white
Local $rank = Int(Random(0,255,1))
Local $quality = Int(Random(0,$rank,1))
	$aColor[3] = [$quality , $quality , $quality]
ElseIf($perstige == 1) Then
	;;;; blue
Local $rank = Int(Random(0,255,1))
Local $quality = Int(Random(0,255,1))
	$aColor[3] = [0 , $rank , $quality]
ElseIf($perstige == 1) Then
	;;; green
Else
	;;;red

EndIf

Local $aColor[3] = [$perstige - $alpha , $rank - $alpha , $quality - $alpha]
Local $nColor = _ColorSetCOLORREF($aColor)
;best to worse (red,gree,blue, white)
ConsoleWrite(Hex($perstige,2) & Hex($rank,2) & Hex($quality,2) & @CRLF)
ConsoleWrite(Hex($beta,2) & @CRLF)
ConsoleWrite(Hex($alpha,2) & @CRLF)
ConsoleWrite(Hex($nColor,6) & @CRLF)
;~ ConsoleWrite(Hex($perstige &":" & $rank &":"& $quality)

