#include <Color.au3>


HotKeySet("{INS}","gen")
HotKeySet("{END}","quit")

Global $rank ,$perstige,$alpha, $quality,$nColor =1
Local $aColor[3] = [0 , 0 , 0]

Func quit()
	Exit
EndFunc


Func gen()
$aColor[0] = 0
$aColor[1] = 0
$aColor[2] = 0
$rank = Int(Random(0,255,1))
$quality = Int(Random(0,255,1))
$perstige1 = Random(0,3,1)
if($perstige1 == 0) Then
$perstige = 0
ElseIf($perstige1 == 1) Then
$perstige = Random(0,1,1)
ElseIf($perstige1 == 2) Then
$perstige = Random(0,2,1)
Else
$perstige = Random(0,3,1)
EndIf

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
$rank = Int(Random(0,255,1))
$quality = Int(Random(0,255,1))
$aColor[0] = 0+$quality
$alpha = Int($rank+$quality)
if($alpha < 0 ) Then
	$aColor[1] = 0
Else
	$aColor[1] = $alpha
EndIf
$aColor[2] = Int(255)
ElseIf($perstige == 2) Then
	;;; green
$rank = Int(Random(0,255,1))
$quality = Int(Random(0,255,1))
$aColor[2] = 0+$quality
$alpha = Int($rank+$quality)
if($alpha < 0 ) Then
	$aColor[0] = 0
Else
	$aColor[0] = $alpha
EndIf
$aColor[1] = Int(255)
Else
	;;;red
$rank = Int(Random(0,255,1))
$quality = Int(Random(0,255,1))
$aColor[2] = 0+$quality
$alpha = Int($rank+$quality)
if($alpha < 0 ) Then
	$aColor[1] = 0
Else
	$aColor[1] = $alpha
EndIf
$aColor[0] = Int(255)
EndIf
$nColor = _ColorSetRGB ($aColor)
ClipPut(Hex($aColor[0],2) & Hex($aColor[1],2) & Hex($aColor[2],2))
ConsoleWrite("P:"& $perstige & @CRLF)
ConsoleWrite("R:"& $rank & @CRLF)
ConsoleWrite("Q:"& $quality & @CRLF)
ConsoleWrite("0:"& $aColor[0]& ".1:"& $aColor[1]& ".2:"& $aColor[2] & @CRLF)
ConsoleWrite("R" & "   G   " & "B" &@CRLF)
ConsoleWrite($aColor[0] &","& $aColor[1] &","& $aColor[2]& @CRLF)
ConsoleWrite(Hex($aColor[0],2) & Hex($aColor[1],2) & Hex($aColor[2],2) & @CRLF)
ConsoleWrite(Hex($nColor) & @CRLF)
$damage = 5*$perstige+1
$accuracy = $rank/255
$crit = $quality/255
ConsoleWrite("DMG:"& $damage & @CRLF)
ConsoleWrite("ACC:"& $accuracy & @CRLF)
ConsoleWrite("CRIT:"& $crit & @CRLF)

EndFunc

While 1
WEnd
