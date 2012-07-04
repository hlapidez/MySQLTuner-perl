#AutoIt3Wrapper_Change2CUI=Y

Local $mem = MemGetStats()

;ConsoleWrite(" test " & $mem[0]);

;ConsoleWrite("Memory Load (Percentage of $memory in use) " &  $mem[0])
;ConsoleWrite("Total physical RAM " & $mem[1])
;ConsoleWrite("Available physical RAM " & $mem[2])
;ConsoleWrite("Total Pagefile " & $mem[3])
;ConsoleWrite("Available Pagefile " & $mem[4])
;ConsoleWrite("Total virtual " & $mem[5])
;ConsoleWrite("Available virtual " & $mem[6])

Local $total = $mem[1] * 1024
Local $used = ( $mem[1] - $mem[2] ) * 1024
Local $free = $mem[2] * 1024

Local $stotal = $mem[3] * 1024
Local $sused = ($mem[3] - $mem[4]) * 1024
Local $sfree = $mem[4] * 1024

; ConsoleWrite("" & @Tab & "total" & @Tab & "used" & @Tab & "free" & @CRLF)
;ConsoleWrite("Mem:" & @Tab & $total & @Tab & $used & @Tab & $free & @CRLF)
;ConsoleWrite("Swap:" & @Tab & $stotal  & @Tab & $sused & @Tab &  $sfree & @CRLF)

ConsoleWrite(StringFormat("%16s " & @Tab & "%16s" & @Tab & "%16s" & @CRLF, "total", "used", "free"))
ConsoleWrite(StringFormat("%s: %16s " & @Tab & "%16s" & @Tab & "%16s" & @CRLF, "Mem", $total, $used, $free))
ConsoleWrite(StringFormat("%s: %16s " & @Tab & "%16s" & @Tab & "%16s" & @CRLF, "Swap", $stotal, $sused, $sfree))


