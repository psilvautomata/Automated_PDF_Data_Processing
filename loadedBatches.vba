Sub treat_loadedbatches()

Dim max1 As Variant
Dim i As Variant
Dim max2 As Integer

Sheets("Produto_Embarcado").Activate
Columns("A:XFD").Select
Selection.ClearContents

Sheets("Automate").Activate

max1 = ActiveSheet.Cells(Rows.Count, 1).End(xlUp).Row 'Counts the rows of certificates that were read in automate

For i = 1 To max1 * 10 'Max * 10 to result in proper spacing and fit all data

    Sheets("Automate").Activate
    Range("A" & i).Copy
    Sheets("Produto_Embarcado").Activate

    If i = 1 Then 'Line 1, beginning of the code differs from the rest, loop is single and not double.

        Range("A" & i).PasteSpecial
        Application.CutCopyMode = False
        Selection.TextToColumns Destination:=Range("A1") 'Dump to identify batches quantity information

        If Range("Y1").Value = 1 And Range("F1").Value = "Comprimento" 'Dump pattern for batches = 1 & Comprimento

            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy 'Column A, row i
            Sheets("Produto_Embarcado").Activate

            Range("A" & i).PasteSpecial 'Paste again, to Coordinates batches = 1
            Application.SendKeys "~", True 'Sends enter key
            
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(59, 1), Array(69, 1), _
            Array(80, 1), Array(87, 1), Array(94, 1), Array(103, 1), Array(113, 1), Array(122, 1), Array(131, 1), Array(140, 1), _
            Array(146, 1), Array(154, 1), Array(158, 1), Array(177, 1), Array(184, 1), Array(201, 1), Array(207, 1)), TrailingMinusNumbers:=True
           
            Range("I1:P1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select 
            ActiveSheet.Paste
            Range("Q1:X1").Select 'Total
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste

        ElseIf Range("Y1").Value = 1 And Range("F1").Value = "Comp.Teórico" Then  'Dump pattern for batches = 1 & Comp.Teórico

            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy 'Column A, row i
            Sheets("Produto_Embarcado").Activate

            Range("A" & i).PasteSpecial 'Paste again, to Coordinates batches = 11
            Application.SendKeys "~", True 'Sends enter key
            
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(59, 1), Array(70, 1), _
            Array(81, 1), Array(88, 1), Array(95, 1), Array(104, 1), Array(114, 1), Array(123, 1), Array(132, 1), Array(141, 1), _
            Array(147, 1), Array(155, 1), Array(159, 1), Array(178, 1), Array(185, 1), Array(202, 1), Array(208, 1)), TrailingMinusNumbers:=True
        
            Range("I1:P1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select 
            ActiveSheet.Paste
            Range("Q1:X1").Select 'Total
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            
        ElseIf Range("AB1").Value = 1 Or Range("AC1").Value = 1 Then 'Standard for certificate with the Rohs characteristic

            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy 'Column A, Row i
        
            Sheets("Produto_Embarcado").Activate

            Range("A" & i).PasteSpecial 'Paste again to Coordinates with batches = 1
            Application.SendKeys "~", True 'Sends key Enter
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(57, 1), Array(61, 1), Array(71, 1), Array(82, 1), _
            Array(93, 1), Array(100, 1), Array(107, 1), Array(116, 1), Array(127, 1), Array(135, 1), Array(137, 1), Array(138, 1), Array(147, 1), Array(157, 1), _
            Array(166, 1), Array(172, 1), Array(177, 1), Array(197, 1), Array(203, 1), Array(221, 1), Array(228, 1)), TrailingMinusNumbers:=True
            
            Range("K1:T1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("U1:AB1").Select 'Total
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
    
        ElseIf Range("AL1").Value = 2 Then 'Dump pattern for batches = 2, cell AL1

            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy
            Sheets("Produto_Embarcado").Activate

            Range("A" & i).PasteSpecial 'Paste again, to Coordinates batches = 2
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), _
            Array(36, 1), Array(49, 1), Array(59, 1), Array(70, 1), Array(81, 1), Array(88, 1), Array( _
            95, 1), Array(104, 1), Array(114, 1), Array(122, 1), Array(132, 1), Array(144, 1), Array( _
            155, 1), Array(162, 1), Array(169, 1), Array(178, 1), Array(188, 1), Array(196, 1), Array( _
            206, 1), Array(218, 1), Array(224, 1), Array(231, 1), Array(236, 1), Array(255, 1), Array( _
            263, 1), Array(280, 1), Array(287, 1)), TrailingMinusNumbers:=True

            Range("I1:P1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("Q1:X1").Select 'Batch 2
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            Range("Y1:AE1").Select 'Total
            Selection.Cut
            Range("A4").Select
            ActiveSheet.Paste
    
        ElseIf Range("Ay1").Value = 3 Then 'Dump pattern for batches = 3, cell AY1

            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy
            Sheets("Produto_Embarcado").Activate

            Range("A" & i).PasteSpecial 'Paste again, to Coordinates batches = 3
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(59, 1), Array(70, 1), _
            Array(80, 1), Array(87, 1), Array(94, 1), Array(103, 1), Array(113, 1), Array(122, 1), Array(131, 1), Array(144, 1), _
            Array(153, 1), Array(160, 1), Array(167, 1), Array(176, 1), Array(186, 1), Array(195, 1), Array(204, 1), Array(214, 1), _
            Array(226, 1), Array(233, 1), Array(240, 1), Array(249, 1), Array(259, 1), Array(268, 1), Array(277, 1), Array(287, 1), _
            Array(295, 1), Array(302, 1), Array(307, 1), Array(326, 1), Array(333, 1), Array(351, 1), Array(356, 1)), TrailingMinusNumbers:=True
            
            Range("I1:P1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("Q1:X1").Select 'Batch 2
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            Range("Y1:AF1").Select 'Batch 3
            Selection.Cut
            Range("A4").Select
            ActiveSheet.Paste
            Range("AG1:AM1").Select 'Total
            Selection.Cut
            Range("A5").Select
            ActiveSheet.Paste
    
        ElseIf Range("BL1").Value = 4 Then 'Dump pattern for batches = 4, cell BL1

            Rows(i).ClearContents
            Application.SendKeys "~", True
            Sheets("Automate").Activate
            Range("A" & i).Copy
            Sheets("Produto_Embarcado").Activate
    
            Range("A" & i).PasteSpecial 'Paste again, to Coordinates batches = 4
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(59, 1), Array(70, 1), _
            Array(80, 1), Array(87, 1), Array(94, 1), Array(103, 1), Array(113, 1), Array(122, 1), Array(131, 1), Array(143, 1), _
            Array(153, 1), Array(160, 1), Array(167, 1), Array(176, 1), Array(186, 1), Array(195, 1), Array(204, 1), Array(216, 1), _
            Array(226, 1), Array(233, 1), Array(240, 1), Array(249, 1), Array(259, 1), Array(268, 1), Array(277, 1), Array(289, 1), _
            Array(299, 1), Array(306, 1), Array(313, 1), Array(322, 1), Array(332, 1), Array(341, 1), Array(350, 1), Array(361, 1), _
            Array(368, 1), Array(375, 1), Array(380, 1), Array(399, 1), Array(406, 1), Array(423, 1), Array(429, 1)), TrailingMinusNumbers:=True
            
            Range("I1:P1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("Q1:X1").Select 'Batch 2
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            Range("Y1:AF1").Select 'Batch 3
            Selection.Cut
            Range("A4").Select
            ActiveSheet.Paste
            Range("Ag1:AN1").Select 'Batch 4
            Selection.Cut
            Range("A5").Select
            ActiveSheet.Paste
            Range("AO1:AU1").Select 'Total
            Selection.Cut
            Range("A6").Select
            ActiveSheet.Paste
    
        End If
    
    Else
    
        max2 = ActiveSheet.Cells(Rows.Count, 1).End(xlUp).Row + 3 'Lines for i different from 1, with "Produto_Embarcado" active before looping, that is, collects information that came from automate
        '+ 3 to skip two lines after the last loop (i)
        Range("A" & max2).PasteSpecial
        Application.CutCopyMode = False
    
        Selection.TextToColumns Destination:=Range("A" & max2) 'Dump to identify batches quantity information
    
        On Error Resume Next
    
        If Range("Y" & max2).Value = 1 And Range("F" & max2).Value = "Comprimento" Then 'Dumping pattern for batches = 1 & Comprimento, row not equal to 1

            Rows(max2).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy 'Column A, row max2 (i+2)
            Sheets("Produto_Embarcado").Activate
        
            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(59, 1), Array(70, 1), _
            Array(80, 1), Array(87, 1), Array(94, 1), Array(103, 1), Array(113, 1), Array(122, 1), Array(131, 1), Array(142, 1), _
            Array(149, 1), Array(155, 1), Array(161, 1), Array(180, 1), Array(186, 1), Array(202, 1), Array(210, 1)), TrailingMinusNumbers:=True
            
            Range("I" & max2 & ":P" & max2).Select
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("Q" & max2 & ":W" & max2).Select
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste

        ElseIf Range("Y" & max2).Value = 1 And Range("F" & max2).Value = "Comp.Teórico" Then 'Dumping pattern for batches = 1 & Comp.Teórico, row not equal to 1

            Rows(max2).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy 'Column A, row max2 (i+2)
            Sheets("Produto_Embarcado").Activate
        
            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(59, 1), Array(70, 1), _
            Array(81, 1), Array(88, 1), Array(95, 1), Array(104, 1), Array(114, 1), Array(123, 1), Array(132, 1), Array(141, 1), _
            Array(147, 1), Array(155, 1), Array(159, 1), Array(178, 1), Array(185, 1), Array(202, 1), Array(208, 1)), TrailingMinusNumbers:=True
            
            Range("I" & max2 & ":P" & max2).Select
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("Q" & max2 & ":W" & max2).Select
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste
    
        ElseIf Range("AB" & max2).Value = 1 Or Range("AC" & max2).Value = 1 Then 'Dumping pattern to Rohs characteristic

            Rows(max2).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy 'Column A, Row max2 (i+2)
            Sheets("Produto_Embarcado").Activate
        
            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(57, 1), Array(61, 1), Array(71, 1), Array(82, 1), _
            Array(93, 1), Array(100, 1), Array(107, 1), Array(116, 1), Array(127, 1), Array(135, 1), Array(137, 1), Array(138, 1), Array(147, 1), Array(157, 1), _
            Array(166, 1), Array(172, 1), Array(177, 1), Array(197, 1), Array(203, 1), Array(221, 1), Array(228, 1)), TrailingMinusNumbers:=True
        
            Range("K" & max2 & ":T" & max2).Select 'Batch 1
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("U" & max2 & ":AB" & max2).Select 'Total
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste
            
        ElseIf Range("AL" & max2) = 2 Then 'Dumping pattern for batches = 1, row not equal to 1, cell Y & max2

            Rows(max2).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy 'Column A, Row max2 (i+2)
            Sheets("Produto_Embarcado").Activate
        
            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), _
            Array(36, 1), Array(49, 1), Array(59, 1), Array(70, 1), Array(81, 1), Array(88, 1), Array( _
            95, 1), Array(104, 1), Array(114, 1), Array(122, 1), Array(132, 1), Array(144, 1), Array( _
            155, 1), Array(162, 1), Array(169, 1), Array(178, 1), Array(188, 1), Array(196, 1), Array( _
            206, 1), Array(218, 1), Array(224, 1), Array(231, 1), Array(236, 1), Array(255, 1), Array( _
            263, 1), Array(280, 1), Array(287, 1)), TrailingMinusNumbers:=True
        
            Range("I" & max2 & ":P" & max2).Select 'Batch 1
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("Q" & max2 & ":X" & max2).Select 'Batch 2
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste
            Range("Y" & max2 & ":AE" & max2).Select 'Total
            Selection.Cut
            Range("A" & max2 + 3).Select
            ActiveSheet.Paste
        
        ElseIf Range("AY" & max2) = 3 Then 'Dumping pattern for batches = 1, row not equal to 1, cell Y & max2

            Rows(max2).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy 'Column A, Row max2 (i+2)
            Sheets("Produto_Embarcado").Activate
        
            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(59, 1), Array(70, 1), _
            Array(80, 1), Array(87, 1), Array(94, 1), Array(103, 1), Array(113, 1), Array(122, 1), Array(131, 1), Array(144, 1), _
            Array(153, 1), Array(160, 1), Array(167, 1), Array(176, 1), Array(186, 1), Array(195, 1), Array(204, 1), Array(216, 1), _
            Array(226, 1), Array(233, 1), Array(240, 1), Array(249, 1), Array(259, 1), Array(268, 1), Array(277, 1), Array(289, 1), _
            Array(295, 1), Array(302, 1), Array(307, 1), Array(326, 1), Array(333, 1), Array(351, 1), Array(356, 1)), TrailingMinusNumbers:=True

            Range("I" & max2 & ":P" & max2).Select 'Batch 1
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("Q" & max2 & ":X" & max2).Select 'Batch 2
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste
            Range("Y" & max2 & ":Af" & max2).Select 'Batch 3
            Selection.Cut
            Range("A" & max2 + 3).Select
            ActiveSheet.Paste
            Range("ag" & max2 & ":AM" & max2).Select 'Total
            Selection.Cut
            Range("A" & max2 + 4).Select
            ActiveSheet.Paste

        ElseIf Range("BL" & max2) = 4 Then 'Dumping pattern for batches = 1, row not equal to 1, cell Y & max2

            Rows(max2).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy 'Column A, Row max2 (i+2)
            Sheets("Produto_Embarcado").Activate

            Range("A" & max2).PasteSpecial
            Application.SendKeys "~", True
            Application.CutCopyMode = False
            Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(4, 1), Array(12, 1), Array(18, 1), Array(28, 1), Array(36, 1), Array(49, 1), Array(59, 1), Array(70, 1), _
            Array(80, 1), Array(87, 1), Array(94, 1), Array(103, 1), Array(113, 1), Array(122, 1), Array(131, 1), Array(143, 1), _
            Array(153, 1), Array(160, 1), Array(167, 1), Array(176, 1), Array(186, 1), Array(195, 1), Array(204, 1), Array(216, 1), _
            Array(226, 1), Array(233, 1), Array(240, 1), Array(249, 1), Array(259, 1), Array(268, 1), Array(277, 1), Array(289, 1), _
            Array(299, 1), Array(306, 1), Array(313, 1), Array(322, 1), Array(332, 1), Array(341, 1), Array(350, 1), Array(361, 1), _
            Array(368, 1), Array(375, 1), Array(380, 1), Array(399, 1), Array(406, 1), Array(423, 1), Array(429, 1)), TrailingMinusNumbers:=True
            
            Range("I" & max2 & ":P" & max2).Select 'Batch 1
            Selection.Cut
            Range("A" & max2 + 1).Select
            ActiveSheet.Paste
            Range("Q" & max2 & ":X" & max2).Select 'Batch 2
            Selection.Cut
            Range("A" & max2 + 2).Select
            ActiveSheet.Paste
            Range("Y" & max2 & ":AF" & max2).Select 'Batch 3
            Selection.Cut
            Range("A" & max2 + 3).Select
            ActiveSheet.Paste
            Range("AG" & max2 & ":AN" & max2).Select 'Batch 4
            Selection.Cut
            Range("A" & max2 + 4).Select
            ActiveSheet.Paste
            Range("AO" & max2 & ":AU" & max2).Select 'Total
            Selection.Cut
            Range("A" & max2 + 5).Select
            ActiveSheet.Paste
            
        End If
    End If
    
Next

Sheets("Produto_Embarcado").Activate
ActiveSheet.UsedRange.EntireRow.AutoFit 'Fits rows height
ActiveSheet.UsedRange.EntireColumn.AutoFit 'Fits columns lenght

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

End Sub
