Sub propriedade_mec()

Dim max As Variant
Dim i As Variant
Dim max2 As Integer

Sheets("Prop_Mec").Activate
Columns("A:XFD").Select

Selection.ClearContents

Sheets("Automate").Activate

max1 = ActiveSheet.Cells(Rows.Count, 1).End(xlUp).Row 'Counts the rows of certificates that were read in automate

For i = 1 To max1 * 10 'Max * 10 to result in proper spacing and fit all data

    Sheets("Automate").Activate
    Range("D" & i).Copy
    Sheets("Prop_Mec").Activate

    If i = 1 Then 'Line 1, beginning of the code differs from the rest, loop is single and not double.
        
        Range("A" & i).PasteSpecial
        Application.CutCopyMode = False
        Selection.TextToColumns Destination:=Range("A1") 'Dump to identify Batches quantity information
        
        If Range("C1").Value = "LE_TR" And Range("H1").Value = "DOBR_180" Then
        
            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("D" & i).Copy
            Sheets("Prop_Mec").Activate
            
            Range("A" & i).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(19, 1), Array(25, 1), Array(34, 1), Array(46, 1), Array(57, 1), _
            Array(68, 1), Array(75, 1), Array(83, 1), Array(91, 1), Array(96, 1), Array(103, 1), Array(107, 1), Array(109, 1), _
            Array(120, 1), Array(127, 1), Array(135, 1), Array(143, 1), Array(148, 1), Array(155, 1), Array(159, 1), Array(161, 1), _
            Array(172, 1), Array(179, 1), Array(187, 1), Array(195, 1), Array(200, 1), Array(207, 1), Array(211, 1), Array(213, 1), _
            Array(224, 1), Array(231, 1), Array(239, 1), Array(247, 1), Array(252, 1), Array(259, 1), Array(263, 1), Array(265, 1)), TrailingMinusNumbers:=True
            
            Range("H1:N1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("P1:V1").Select 'Batch 2
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            Range("W1:AC1").Select 'Batch 3
            Selection.Cut
            Range("A4").Select
            ActiveSheet.Paste
            Range("AD1:AH1").Select 'Batch 4
            Selection.Cut
            Range("A5").Select
            ActiveSheet.Paste
            
        ElseIf Range("C1").Value = "LE_TR" Then
        
            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("D" & i).Copy
            Sheets("Prop_Mec").Activate
        
            Range("A" & i).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(19, 1), Array(25, 1), Array(34, 1), Array(48, 1), _
            Array(59, 1), Array(66, 1), Array(74, 1), Array(82, 1), Array(87, 1), Array(94, 1), Array(98, 1), _
            Array(108, 1), Array(115, 1), Array(123, 1), Array(131, 1), Array(136, 1), Array(143, 1), Array(147, 1), _
            Array(157, 1), Array(164, 1), Array(172, 1), Array(180, 1), Array(185, 1), Array(192, 1), Array(196, 1), _
            Array(209, 1), Array(213, 1), Array(221, 1), Array(229, 1), Array(234, 1), Array(241, 1), Array(245, 1)), TrailingMinusNumbers:=True
            
            Range("G1:L1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("M1:R1").Select 'Batch 2
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            Range("S1:X1").Select 'Batch 3
            Selection.Cut
            Range("A4").Select
            ActiveSheet.Paste
            Range("Y1:AD1").Select 'Batch 4
            Selection.Cut
            Range("A5").Select
            ActiveSheet.Paste
            
        ElseIf Range("E1").Value = "Rev" And Range("F1").Value = "Média" Then
        
            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("D" & i).Copy
            Sheets("Prop_Mec").Activate

            Range("A" & i).PasteSpecial
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(19, 1), Array(27, 1), Array(39, 1), _
            Array(51, 1), Array(58, 1), Array(65, 1), Array(68, 1), Array(77, 1), Array(91, 1), _
            Array(103, 1), Array(110, 1), Array(117, 1), Array(120, 1), Array(129, 1), Array(143, 1), _
            Array(155, 1), Array(162, 1), Array(169, 1), Array(172, 1), Array(181, 1), Array(185, 1), _
            Array(207, 1), Array(214, 1), Array(221, 1), Array(224, 1), Array(233, 1), Array(237, 1)), TrailingMinusNumbers:=True
            
            Range("F1:K1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("L1:Q1").Select 'Batch 2
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            Range("R1:W1").Select 'Batch 3
            Selection.Cut
            Range("A4").Select
            ActiveSheet.Paste
            Range("X1:AC1").Select 'Batch 4
            Selection.Cut
            Range("A5").Select
            ActiveSheet.Paste
            
        ElseIf Range("E1").Value = "Rev" And Range("F1").Value = "Ponto" Then
        
            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("D" & i).Copy
            Sheets("Prop_Mec").Activate

            Range("A" & i).PasteSpecial
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(19, 1), Array(27, 1), Array(37, 1), Array(50, 1), _
            Array(62, 1), Array(69, 1), Array(76, 1), Array(79, 1), Array(88, 1), Array(100, 1), _
            Array(111, 1), Array(118, 1), Array(125, 1), Array(128, 1), Array(137, 1), Array(149, 1), _
            Array(160, 1), Array(166, 1), Array(173, 1), Array(176, 1), Array(185, 1), Array(197, 1), _
            Array(209, 1), Array(215, 1), Array(222, 1), Array(225, 1), Array(234, 1), Array(246, 1)), TrailingMinusNumbers:=True
            
            Range("G1:L1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("M1:R1").Select 'Batch 2
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            Range("S1:X1").Select 'Batch 3
            Selection.Cut
            Range("A4").Select
            ActiveSheet.Paste
            Range("Y1:AD1").Select 'Batch 3
            Selection.Cut
            Range("A5").Select
            ActiveSheet.Paste
            
        End If
        
    Else
    
        max2 = ActiveSheet.Cells(Rows.Count, 1).End(xlUp).Row + 3 'Count Rows for i <> 1, with "Prop_Mec" active before looping, i.e., collects information that came from automate
        '+ 3 to skip two lines after the last loop (i)
    
        Range("A" & max2).PasteSpecial
        Application.CutCopyMode = False
        
        Selection.TextToColumns Destination:=Range("A" & max2) 'Dump to identify Lot quantity information
        
        On Error Resume Next

    If Range("C" & max2).Value = "LE_TR" And Range("H" & max2).Value = "DOBR_180" Then
    
        Rows(max2).ClearContents
        Sheets("Automate").Activate
        Range("D" & i).Copy
        Sheets("Prop_Mec").Activate

            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(19, 1), Array(25, 1), Array(34, 1), Array(46, 1), Array(57, 1), _
            Array(68, 1), Array(75, 1), Array(83, 1), Array(91, 1), Array(96, 1), Array(103, 1), Array(107, 1), Array(109, 1), _
            Array(120, 1), Array(127, 1), Array(135, 1), Array(143, 1), Array(148, 1), Array(155, 1), Array(159, 1), Array(161, 1), _
            Array(172, 1), Array(179, 1), Array(187, 1), Array(195, 1), Array(200, 1), Array(207, 1), Array(211, 1), Array(213, 1), _
            Array(224, 1), Array(231, 1), Array(239, 1), Array(247, 1), Array(252, 1), Array(259, 1), Array(263, 1), Array(265, 1)), TrailingMinusNumbers:=True
            
            Range("H" & max2 & ":N" & max2).Select 'Batch 1
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("P" & max2 & ":V" & max2).Select 'Batch 2
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste
            Range("W" & max2 & ":AC" & max2).Select 'Batch 3
            Selection.Cut
            Range("A" & max2 + 3).Select
            ActiveSheet.Paste
            Range("AD" & max2 & ":AH" & max2).Select 'Batch 4
            Selection.Cut
            Range("A" & max2 + 4).Select
            ActiveSheet.Paste
            
            
        ElseIf Range("C" & max2).Value = "LE_TR" Then
        
            Rows(max2).ClearContents
            Sheets("Automate").Activate
            Range("D" & i).Copy
        
            Sheets("Prop_Mec").Activate
            
            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(19, 1), Array(25, 1), Array(34, 1), Array(48, 1), _
            Array(59, 1), Array(66, 1), Array(74, 1), Array(82, 1), Array(87, 1), Array(94, 1), Array(98, 1), _
            Array(108, 1), Array(115, 1), Array(123, 1), Array(131, 1), Array(136, 1), Array(143, 1), Array(147, 1), _
            Array(157, 1), Array(164, 1), Array(172, 1), Array(180, 1), Array(185, 1), Array(192, 1), Array(196, 1), _
            Array(209, 1), Array(213, 1), Array(221, 1), Array(229, 1), Array(234, 1), Array(241, 1), Array(245, 1)), TrailingMinusNumbers:=True
            
            Range("G" & max2 & ":L" & max2).Select 'Batch 1
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("M" & max2 & ":R" & max2).Select 'Batch 2
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste
            Range("S" & max2 & ":X" & max2).Select 'Batch 3
            Selection.Cut
            Range("A" & max2 + 3).Select
            ActiveSheet.Paste
            Range("Y" & max2 & ":AD" & max2).Select 'Batch 4
            Selection.Cut
            Range("A" & max2 + 4).Select
            ActiveSheet.Paste
        
        ElseIf Range("E" & max2).Value = "Rev" And Range("F" & max2).Value = "Média" Then
        
            Rows(max2).ClearContents
            
            Sheets("Automate").Activate
            Range("D" & i).Copy
            Sheets("Prop_Mec").Activate
            
            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(19, 1), Array(27, 1), Array(41, 1), _
            Array(51, 1), Array(58, 1), Array(65, 1), Array(68, 1), Array(77, 1), Array(91, 1), _
            Array(103, 1), Array(110, 1), Array(117, 1), Array(120, 1), Array(129, 1), Array(143, 1), _
            Array(155, 1), Array(162, 1), Array(169, 1), Array(172, 1), Array(181, 1), Array(185, 1), _
            Array(207, 1), Array(214, 1), Array(221, 1), Array(224, 1), Array(233, 1), Array(237, 1)), TrailingMinusNumbers:=True
            
            Range("F" & max2 & ":K" & max2).Select 'Batch 1
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("L" & max2 & ":Q" & max2).Select 'Batch 2
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste
            Range("R" & max2 & ":W" & max2).Select 'Batch 3
            Selection.Cut
            Range("A" & max2 + 3).Select
            ActiveSheet.Paste
            Range("X" & max2 & ":AC" & max2).Select 'Batch 4
            Selection.Cut
            Range("A" & max2 + 4).Select
            ActiveSheet.Paste
            
        ElseIf Range("E" & max2).Value = "Rev" And Range("F" & max2).Value = "Ponto" Then
        
            Rows(max2).ClearContents
            
            Sheets("Automate").Activate
            Range("D" & i).Copy
            Sheets("Prop_Mec").Activate
            
            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(19, 1), Array(27, 1), Array(37, 1), Array(50, 1), _
            Array(62, 1), Array(69, 1), Array(76, 1), Array(79, 1), Array(88, 1), Array(100, 1), _
            Array(111, 1), Array(118, 1), Array(125, 1), Array(128, 1), Array(137, 1), Array(149, 1), _
            Array(160, 1), Array(166, 1), Array(173, 1), Array(176, 1), Array(185, 1), Array(197, 1), _
            Array(209, 1), Array(215, 1), Array(222, 1), Array(225, 1), Array(234, 1), Array(246, 1)), TrailingMinusNumbers:=True
            
            Range("G" & max2 & ":L" & max2).Select 'Batch 1
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("M" & max2 & ":R" & max2).Select 'Batch 2
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste
            Range("S" & max2 & ":X" & max2).Select 'Batch 3
            Selection.Cut
            Range("A" & max2 + 3).Select
            ActiveSheet.Paste
            Range("Y" & max2 & ":AD" & max2).Select 'Batch 4
            Selection.Cut
            Range("A" & max2 + 4).Select
            ActiveSheet.Paste

        End If
    End If
    
Next

Sheets("Prop_Mec").Activate
ActiveSheet.UsedRange.EntireRow.AutoFit 'Firs Rows height
ActiveSheet.UsedRange.EntireColumn.AutoFit 'Fits Columns lenght

Columns("A:A").Select
Selection.Insert Shift:=xlToRight
Range("A1").Select
ActiveCell.FormulaR1C1 = "Lote ID"
Range("A2").Select
Application.CutCopyMode = False
ActiveCell.FormulaR1C1 = "=RC[1]&RC[2]"
Range("A2").Select
Selection.AutoFill Destination:=Range("A2:A" & max2)
Range("A2:A" & max2).Select
ActiveSheet.UsedRange.EntireColumn.AutoFit
Selection.Replace What:="%", Replacement:="", LookAt:=xlPart, _
SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
ReplaceFormat:=False, FormulaVersion:=xlReplaceFormula2
Selection.NumberFormat = "0.00"

Range("A1").Select

End Sub
