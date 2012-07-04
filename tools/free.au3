#AutoIt3Wrapper_Change2CUI=Y

Local $mem = MemGetStats()

Local $total = $mem[1] * 1024
Local $used = ( $mem[1] - $mem[2] ) * 1024
Local $free = $mem[2] * 1024

Local $stotal = $mem[3] * 1024
Local $sused = ($mem[3] - $mem[4]) * 1024
Local $sfree = $mem[4] * 1024

ConsoleWrite(StringFormat("%16s " & @Tab & "%16s" & @Tab & "%16s" & @CRLF, "total", "used", "free"))
ConsoleWrite(StringFormat("%s: %16s " & @Tab & "%16s" & @Tab & "%16s" & @CRLF, "Mem", $total, $used, $free))
ConsoleWrite(StringFormat("%s: %16s " & @Tab & "%16s" & @Tab & "%16s" & @CRLF, "Swap", $stotal, $sused, $sfree))


