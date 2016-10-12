; ===== win 键执行 RUN =====
$LWin::
    KeyWait, LWin, T0.15
    If !ErrorLevel ; if you hold the LWin key for less than 150 miliseconds...
        try 
        {
            InputBox, String , Run, RunWhat,,,, 20, 800
            Run %String%
        }
    Else ; but if it is held for more than that...
    {
        Send, {LWin Down}
        KeyWait, LWin  ; and, in both cases, wait for it to be released
        Send, {LWin Up}
    }
Return



;LWin Down::
;    try 
;    {
;        InputBox, String , Run, RunWhat,,,, 20, 800
;        Run %String%
;    }
;return
