Sub comp_quim()

Dim max As Variant
Dim i As Variant
Dim max2 As Integer

Sheets("Comp_Quim").Activate
Columns("A:XFD").Select
Selection.ClearContents

Sheets("Automate").Activate

max1 = ActiveSheet.Cells(Rows.Count, 1).End(xlUp).Row 'Counts the rows of certificates that were read in automate

For i = 1 To max1 * 10 'Max * 10 to result in proper spacing and fit all data

Sheets("Automate").Activate
Range("C" & i).Copy
Sheets("Comp_Quim").Activate

    If i = 1 Then 'Line 1, beginning of the code differs from the rest, loop is single and not double.
    Range("A" & i).PasteSpecial
    Application.CutCopyMode = False
    Selection.TextToColumns Destination:=Range("A1") 'Dump to identify Batches quantity information
        
        If Range("R1").Value = "C" Then 'Pattern to compositions without "Ca" specified, iteration 1
        
            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("A" & i).Copy
            Sheets("Comp_Quim").Activate
            Sheets("Automate").Activate
            
            Range("C" & i).Copy
            Sheets("Comp_Quim").Select
            Range("A1").Select
            ActiveSheet.Paste
            Application.CutCopyMode = False
            Application.SendKeys "~"
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(5, 1), Array(7, 1), Array(10, 1), Array(12, 1), Array(14, 1), Array(17, 1), Array(20, 1), Array(23, 1), Array(26, 1), Array(29, 1), Array(32, 1), Array(35, 1), Array(37, 1), Array(40, 1), Array(42, 1), Array(45, 1), Array(47, 1), Array(55, 1), _
                Array(62, 1), Array(69, 1), Array(76, 1), Array(83, 1), Array(90, 1), Array(97, 1), Array(104, 1), Array(111, 1), Array(118, 1), Array(125, 1), Array(132, 1), Array(139, 1), Array(148, 1), Array(155, 1), Array(162, 1), Array(169, 1), Array(177, 1), Array(186, 1), _
            Array(192, 1), Array(199, 1), Array(206, 1), Array(213, 1), Array(220, 1), Array(227, 1), Array(234, 1), Array(241, 1), Array(248, 1), Array(255, 1), Array(262, 1), Array(269, 1), Array(278, 1), Array(285, 1), Array(292, 1), Array(299, 1), Array(307, 1), Array(316, 1), _
            Array(322, 1), Array(329, 1), Array(336, 1), Array(343, 1), Array(350, 1), Array(357, 1), Array(364, 1), Array(371, 1), Array(378, 1), Array(385, 1), Array(392, 1), Array(399, 1), Array(408, 1), Array(415, 1), Array(422, 1), Array(429, 1), Array(437, 1), Array(446, 1), _
            Array(452, 1), Array(459, 1), Array(466, 1), Array(473, 1), Array(480, 1), Array(487, 1), Array(494, 1), Array(501, 1), Array(508, 1), Array(515, 1), Array(522, 1), Array(529, 1), Array(538, 1), Array(545, 1), Array(552, 1), Array(559, 1), Array(567, 1), Array(576, 1)), TrailingMinusNumbers:=True
              
            Range("S1:AJ1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("AK1:BB1").Select 'Batch 2
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            Range("BC1:BT1").Select 'Batch 3
            Selection.Cut
            Range("A4").Select
            ActiveSheet.Paste
            Range("BU1:CL1").Select 'Batch 4
            Selection.Cut
            Range("A5").Select
            ActiveSheet.Paste
         
        ElseIf Range("S1") = "C" Then 'Pattern to composition with "Ca" specified, iteration 1
        
            Rows(i).ClearContents
            Sheets("Automate").Activate
            Range("C" & i).Copy
            Sheets("Comp_Quim").Select
            Range("A1").Select
            ActiveSheet.Paste
            
            Application.CutCopyMode = False
            Application.SendKeys "~"
            Selection.TextToColumns Destination:=Range("A1"), DataType:=xlFixedWidth, _
            FieldInfo:=Array(Array(0, 1), Array(5, 1), Array(7, 1), Array(10, 1), Array(12, 1), Array(14, 1), Array(17, 1), Array(20, 1), Array(23, 1), Array(26, 1), Array(29, 1), Array(32, 1), Array(35, 1), Array(37, 1), Array(40, 1), Array(42, 1), Array(45, 1), Array(47, 1), Array(50, 1), Array(61, 1), _
                Array(68, 1), Array(75, 1), Array(82, 1), Array(88, 1), Array(96, 1), Array(103, 1), Array(110, 1), Array(117, 1), Array(124, 1), Array(131, 1), Array(138, 1), Array(145, 1), Array(154, 1), Array(161, 1), Array(168, 1), Array(175, 1), Array(182, 1), Array(189, 1), Array(200, 1), _
            Array(207, 1), Array(214, 1), Array(221, 1), Array(228, 1), Array(235, 1), Array(242, 1), Array(249, 1), Array(256, 1), Array(263, 1), Array(270, 1), Array(277, 1), Array(283, 1), Array(292, 1), Array(300, 1), Array(307, 1), Array(314, 1), Array(321, 1), Array(328, 1), _
            Array(338, 1), Array(345, 1), Array(352, 1), Array(359, 1), Array(366, 1), Array(373, 1), Array(380, 1), Array(387, 1), Array(394, 1), Array(401, 1), Array(408, 1), Array(412, 1), Array(423, 1), Array(431, 1), Array(438, 1), Array(445, 1), Array(450, 1), Array(462, 1), _
            Array(470, 1), Array(477, 1), Array(484, 1), Array(491, 1), Array(498, 1), Array(505, 1), Array(512, 1), Array(519, 1), Array(526, 1), Array(533, 1), Array(540, 1), Array(542, 1), Array(555, 1), Array(563, 1), Array(570, 1), Array(577, 1), Array(584, 1)), TrailingMinusNumbers:=True
        
            Range("T1:AL1").Select 'Batch 1
            Selection.Cut
            Range("A2").Select
            ActiveSheet.Paste
            Range("AM1:BE1").Select 'Batch 2
            Selection.Cut
            Range("A3").Select
            ActiveSheet.Paste
            Range("BF1:BX1").Select 'Batch 3
            Selection.Cut
            Range("A4").Select
            ActiveSheet.Paste
            Range("BZ1:CR1").Select 'Batch 4
            Selection.Cut
            Range("A5").Select
            ActiveSheet.Paste
    End If
    
Else

    max2 = ActiveSheet.Cells(Rows.Count, 1).End(xlUp).Row + 3
    
    On Error Resume Next
    
    Sheets("Automate").Activate
    Range("C" & i).Copy
    Sheets("Comp_Quim").Activate
    Range("A" & max2).PasteSpecial
    Application.CutCopyMode = False
    Selection.TextToColumns Destination:=Range("A" & max2)
        
    If Range("R" & max2).Value = "C" Then 'Pattern to compositions without "Ca" specified, iteration <> 1
            
        Sheets("Automate").Activate
        Range("C" & i).Copy
        Sheets("Comp_Quim").Select
        Range("A" & max2).Select
        ActiveSheet.Paste
        
        Application.CutCopyMode = False
        Application.SendKeys "~"
        Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
        FieldInfo:=Array(Array(0, 1), Array(5, 1), Array(7, 1), Array(10, 1), Array(12, 1), Array(14, 1), Array(17, 1), Array(20, 1), Array(23, 1), Array(26, 1), Array(29, 1), Array(32, 1), Array(35, 1), Array(37, 1), Array(40, 1), Array(42, 1), Array(45, 1), Array(47, 1), Array(55, 1), _
                Array(62, 1), Array(69, 1), Array(76, 1), Array(83, 1), Array(90, 1), Array(97, 1), Array(104, 1), Array(111, 1), Array(118, 1), Array(125, 1), Array(132, 1), Array(139, 1), Array(148, 1), Array(155, 1), Array(162, 1), Array(169, 1), Array(177, 1), Array(186, 1), _
        Array(192, 1), Array(199, 1), Array(206, 1), Array(213, 1), Array(220, 1), Array(227, 1), Array(234, 1), Array(241, 1), Array(248, 1), Array(255, 1), Array(262, 1), Array(269, 1), Array(278, 1), Array(285, 1), Array(292, 1), Array(299, 1), Array(307, 1), Array(316, 1), _
        Array(322, 1), Array(329, 1), Array(336, 1), Array(343, 1), Array(350, 1), Array(357, 1), Array(364, 1), Array(371, 1), Array(378, 1), Array(385, 1), Array(392, 1), Array(399, 1), Array(408, 1), Array(415, 1), Array(422, 1), Array(429, 1), Array(437, 1), Array(446, 1), _
        Array(452, 1), Array(459, 1), Array(466, 1), Array(473, 1), Array(480, 1), Array(487, 1), Array(494, 1), Array(501, 1), Array(508, 1), Array(515, 1), Array(522, 1), Array(529, 1), Array(538, 1), Array(545, 1), Array(552, 1), Array(559, 1), Array(567, 1), Array(576, 1)), TrailingMinusNumbers:=True
         
        Range("S" & max2 & ":AJ" & max2).Select 'Batch 1
        Selection.Cut
        Range("A" & max2 + 1).Select
        ActiveSheet.Paste
        Range("AK" & max2 & ":BB" & max2).Select 'Batch 2
        Selection.Cut
        Range("A" & max2 + 2).Select
        ActiveSheet.Paste
        Range("BC" & max2 & ":BT" & max2).Select 'Batch 3
        Selection.Cut
        Range("A" & max2 + 3).Select
        ActiveSheet.Paste
        Range("BU" & max2 & ":CL" & max2).Select 'Batch 4
        Selection.Cut
        Range("A" & max2 + 4).Select
        ActiveSheet.Paste
            
    ElseIf Range("S" & max2).Value = "C" Then 'Pattern to compositions with "Ca" specified, iteration <> 1
    
        Sheets("Automate").Activate
        Range("C" & i).Copy
        Sheets("Comp_Quim").Select
        Range("A" & max2).Select
        ActiveSheet.Paste
        
        Application.CutCopyMode = False
        Application.SendKeys "~"
        Selection.TextToColumns Destination:=Range("A" & max2), DataType:=xlFixedWidth, _
        FieldInfo:=Array(Array(0, 1), Array(5, 1), Array(7, 1), Array(10, 1), Array(12, 1), Array(14, 1), Array(17, 1), Array(20, 1), Array(23, 1), Array(26, 1), Array(29, 1), Array(32, 1), Array(35, 1), Array(37, 1), Array(40, 1), Array(42, 1), Array(45, 1), Array(47, 1), Array(50, 1), Array(61, 1), _
            Array(68, 1), Array(75, 1), Array(82, 1), Array(88, 1), Array(96, 1), Array(103, 1), Array(110, 1), Array(117, 1), Array(124, 1), Array(131, 1), Array(138, 1), Array(145, 1), Array(154, 1), Array(161, 1), Array(168, 1), Array(175, 1), Array(182, 1), Array(189, 1), Array(200, 1), _
        Array(207, 1), Array(214, 1), Array(221, 1), Array(228, 1), Array(235, 1), Array(242, 1), Array(249, 1), Array(256, 1), Array(263, 1), Array(270, 1), Array(277, 1), Array(283, 1), Array(292, 1), Array(300, 1), Array(307, 1), Array(314, 1), Array(321, 1), Array(328, 1), _
        Array(338, 1), Array(345, 1), Array(352, 1), Array(359, 1), Array(366, 1), Array(373, 1), Array(380, 1), Array(387, 1), Array(394, 1), Array(401, 1), Array(408, 1), Array(412, 1), Array(423, 1), Array(431, 1), Array(438, 1), Array(445, 1), Array(450, 1), Array(462, 1), _
        Array(470, 1), Array(477, 1), Array(484, 1), Array(491, 1), Array(498, 1), Array(505, 1), Array(512, 1), Array(519, 1), Array(526, 1), Array(533, 1), Array(540, 1), Array(542, 1), Array(555, 1), Array(563, 1), Array(570, 1), Array(577, 1), Array(584, 1)), TrailingMinusNumbers:=True
    
        Range("T" & max2 & ":AL" & max2).Select 'Lote 1
        Selection.Cut
        Range("A" & max2 + 1).Select
        ActiveSheet.Paste
        Range("AM" & max2 & ":BE" & max2).Select 'Lote 2
        Selection.Cut
        Range("A" & max2 + 2).Select
        ActiveSheet.Paste
        Range("BF" & max2 & ":BX" & max2).Select 'Lote 3
        Selection.Cut
        Range("B" & max2 + 3).Select
        ActiveSheet.Paste
        Range("BZ" & max2 & ":CR" & max2).Select 'Lote 4
        Selection.Cut
        Range("A" & max2 + 4).Select
        ActiveSheet.Paste
        
        End If
    End If
    
Next

Sheets("Comp_Quim").Activate
ActiveSheet.UsedRange.EntireRow.AutoFit 'Fits Rows height
ActiveSheet.UsedRange.EntireColumn.AutoFit 'Fits columns lenght
Columns("R:S").Select
Selection.Replace What:=" ", Replacement:="", LookAt:=xlPart, _
SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
ReplaceFormat:=False, FormulaVersion:=xlReplaceFormula2
Selection.Replace What:=Chr(13), Replacement:="", _
SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
ReplaceFormat:=False, FormulaVersion:=xlReplaceFormula2

End Sub
