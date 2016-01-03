' replace.vbs
' Copyright (c) 2013-2015 tag

Option Explicit

' arguments
Dim objArgs : Set objArgs = WScript.Arguments
If objArgs.Count <> 2 Then
	WScript.Echo "error: wrong number of arguments" & vbCrLf & "usage: script.vbs <input> <output>"
	WScript.Quit
End If
Dim strInputFile : strInputFile = objArgs(0)
Dim strOutputFile : strOutputFile = objArgs(1)

' object: FileSystemObject
Dim objFSO : Set objFSO = CreateObject("Scripting.FileSystemObject")

' open input file
Dim objInput : Set objInput = objFSO.OpenTextFile(strInputFile, 1)

Dim strOutput : strOutput = ReplaceWithPatterns(objInput)
'WScript.Echo strOutput
objInput.Close

' replace and write to output file
Dim objOutput : Set objOutput = objFSO.CreateTextFile(strOutputFile)
objOutput.Write(strOutput)
objOutput.Close

' finalize
Set objInput = Nothing
'Set objOutput = Nothing
Set objFSO = Nothing

' ================================================== '

' function: replace with patterns
Function ReplaceWithPatterns(objInput)
	Dim strLine, strOutput, strReplacePattern
	Dim strReplacePatternArray : strReplacePatternArray = Array( _
		Array("A", "C"), _
		Array("B", "D") _
	)
	Do Until objInput.AtEndOfStream = True
		strLine = objInput.ReadLine
		For Each strReplacePattern In strReplacePatternArray
			strLine = Replace(strLine, strReplacePattern(0), strReplacePattern(1))
		Next
		strOutput = strOutput & strLine & vbCrLf
	Loop
	ReplaceWithPatterns = strOutput
End Function
