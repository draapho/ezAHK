; 分号是注释
#include getPath.ahk

; 仅允许单实例
#SingleInstance ignore



; ===== 鼠标中键, 复制内容. =====
MButton::
    send ^c
    Hotkey, RButton, Paste
    Hotkey, RButton, on
return

; ===== ctrl-鼠标中键, 复制路径 =====
^MButton::
    path := Explorer_GetPath()
    sel := Explorer_GetSelected()
    
    IfInString, sel, \
    {
        path := sel
    }
    
    IfInString, path, \
    {
        clipboard = %path%
        Hotkey, RButton, Paste
        Hotkey, RButton, on
    }
return

; ===== ctrl-shift-鼠标中键, 屏幕取色 =====
^+MButton::
    MouseGetPos, mouseX, mouseY
    PixelGetColor, color, %mouseX%, %mouseY%, RGB
    StringRight color,color,6
    clipboard = %color%
    Hotkey, RButton, Paste
    Hotkey, RButton, on

    tooltip, RGB:%color% have copied
    sleep 2000
    tooltip,
return

; ===== 鼠标右键, 首次黏贴. ctrl-鼠标右键, 黏贴内容 ===== 
Paste:
    send ^v
    Hotkey, RButton, off
return

^RButton::send ^v



; ===== ctrl-` 根据所在目录打开终端 =====
~^`::
    path := Explorer_GetPath()
    sel := Explorer_GetSelected()
    
    IfInString, sel, \
    {
        path := sel
    }
    
    IfInString, path, \
    {
        run ConEmu.exe -Dir %path% -run {Git bash} 
    }
return



; ===== ctrl-↑ ↓ ← → 单像素移动 =====
^Left::  MouseMove, -1,  0,, R
^Up::    MouseMove,  0, -1,, R
^Right:: MouseMove,  1,  0,, R
^Down::  MouseMove,  0,  1,, R



; ===== ctrl-shift-d 输入系统日期 =====
^+d::
    FormatTime, now_date, %A_Now%, yyyy-MM-dd
    Send, % now_date
return



; ===== #表示Win键, 索引快捷方式 =====
; `$` 避免自己触发按键造成死循环
$#a:: 
    IfExist, .\link\win-a.lnk 
        run %A_ScriptDir%\link\win-a 
    else 
        send #a
    return
$#b:: 
    IfExist, .\link\win-b.lnk 
        run %A_ScriptDir%\link\win-b
    else 
        send #b
    return       
$#c::
    IfExist, .\link\win-c.lnk
        run %A_ScriptDir%\link\win-c
    else
        send #c 
    return
$#d::   
    IfExist, .\link\win-d.lnk       
        run %A_ScriptDir%\link\win-d    
    else       
        send #d 
    return
$#e::   
    IfExist, .\link\win-e.lnk       
        run %A_ScriptDir%\link\win-e    
    else       
        send #e 
    return
$#f::   
    IfExist, .\link\win-f.lnk       
        run %A_ScriptDir%\link\win-f    
    else       
        send #f 
    return
$#g::   
    IfExist, .\link\win-g.lnk       
        run %A_ScriptDir%\link\win-g    
    else       
        send #g 
    return
$#h::   
    IfExist, .\link\win-h.lnk       
        run %A_ScriptDir%\link\win-h    
    else       
        send #h 
    return
$#i::   
    IfExist, .\link\win-i.lnk       
        run %A_ScriptDir%\link\win-i    
    else       
        send #i 
    return
$#j::   
    IfExist, .\link\win-j.lnk       
        run %A_ScriptDir%\link\win-j    
    else       
        send #j 
    return
$#k::   
    IfExist, .\link\win-k.lnk       
        run %A_ScriptDir%\link\win-k   
    else       
        send #k 
    return
$#l::   
    IfExist, .\link\win-l.lnk       
        run %A_ScriptDir%\link\win-l    
    else       
        send #l 
    return
$#m::   
    IfExist, .\link\win-m.lnk       
        run %A_ScriptDir%\link\win-m    
    else       
        send #m 
    return
$#n::   
    IfExist, .\link\win-n.lnk      
        run %A_ScriptDir%\link\win-n    
    else       
        send #n 
    return
$#o::   
    IfExist, .\link\win-o.lnk       
        run %A_ScriptDir%\link\win-o    
    else       
        send #o 
    return
$#p::   
    IfExist, .\link\win-p.lnk       
        run %A_ScriptDir%\link\win-p    
    else       
        send #p 
    return
$#q::   
    IfExist, .\link\win-q.lnk       
        run %A_ScriptDir%\link\win-q    
    else       
        send #q 
    return
$#r::   
    IfExist, .\link\win-r.lnk       
        run %A_ScriptDir%\link\win-r    
    else       
        send #r 
    return
$#s::   
    IfExist, .\link\win-s.lnk       
        run %A_ScriptDir%\link\win-s    
    else       
        send #s
    return
$#t::   
    IfExist, .\link\win-t.lnk       
        run %A_ScriptDir%\link\win-t    
    else       
        send #t 
    return
$#u::   
    IfExist, .\link\win-u.lnk       
        run %A_ScriptDir%\link\win-u    
    else       
        send #u 
    return
$#v::   
    IfExist, .\link\win-v.lnk       
        run %A_ScriptDir%\link\win-v    
    else       
        send #v 
    return
$#w::   
    IfExist, .\link\win-w.lnk       
        run %A_ScriptDir%\link\win-w    
    else       
        send #w 
    return
$#x::   
    IfExist, .\link\win-x.lnk       
        run %A_ScriptDir%\link\win-x    
    else       
        send #x 
    return
$#y::   
    IfExist, .\link\win-y.lnk       
        run %A_ScriptDir%\link\win-y    
    else      
        send #y 
    return
$#z::   
    IfExist, .\link\win-z.lnk       
    run %A_ScriptDir%\link\win-z    
    else       send #z 
    return

; ===== !表示Alt键, 索引快捷方式 =====
$!a:: 
    IfExist, .\link\alt-a.lnk 
        run %A_ScriptDir%\link\alt-a 
    else 
        send !a
    return 
$!b:: 
    IfExist, .\link\alt-b.lnk 
        run %A_ScriptDir%\link\alt-b 
    else 
        send !b
    return 
$!c:: 
    IfExist, .\link\alt-c.lnk 
        run %A_ScriptDir%\link\alt-c 
    else 
        send !c 
    return 
$!d:: 
    IfExist, .\link\alt-d.lnk 
        run %A_ScriptDir%\link\alt-d 
    else 
        send !d
    return 
$!e:: 
    IfExist, .\link\alt-e.lnk 
        run %A_ScriptDir%\link\alt-e 
    else 
        send !e
    return 
$!f:: 
    IfExist, .\link\alt-f.lnk 
        run %A_ScriptDir%\link\alt-f 
    else 
        send !f
    return 
$!g:: 
    IfExist, .\link\alt-g.lnk 
        run %A_ScriptDir%\link\alt-g
    else 
        send !g
    return 
$!h:: 
    IfExist, .\link\alt-h.lnk 
        run %A_ScriptDir%\link\alt-h 
    else 
        send !h
    return 
$!i:: 
    IfExist, .\link\alt-i.lnk 
        run %A_ScriptDir%\link\alt-i 
    else 
        send !i
    return
$!j:: 
    IfExist, .\link\alt-j.lnk 
        run %A_ScriptDir%\link\alt-j 
    else 
        send !j
    return 
$!k:: 
    IfExist, .\link\alt-k.lnk 
        run %A_ScriptDir%\link\alt-k 
    else 
        send !k
    return 
$!l:: 
    IfExist, .\link\alt-l.lnk 
        run %A_ScriptDir%\link\alt-l 
    else 
        send !l
    return 
$!m:: 
    IfExist, .\link\alt-m.lnk 
        run %A_ScriptDir%\link\alt-m
    else 
        send !m
    return 
$!n:: 
    IfExist, .\link\alt-n.lnk 
        run %A_ScriptDir%\link\alt-n 
    else 
        send !n
    return 
$!o:: 
    IfExist, .\link\alt-o.lnk 
        run %A_ScriptDir%\link\alt-o 
    else 
        send !o
    return 
$!p:: 
    IfExist, .\link\alt-p.lnk 
        run %A_ScriptDir%\link\alt-p 
    else
        send !p
    return 
$!q:: 
    IfExist, .\link\alt-q.lnk 
        run %A_ScriptDir%\link\alt-q 
    else 
        send !q
    return 
$!r:: 
    IfExist, .\link\alt-r.lnk 
        run %A_ScriptDir%\link\alt-r 
    else 
        send !r
    return 
$!s:: 
    IfExist, .\link\alt-s.lnk 
        run %A_ScriptDir%\link\alt-s 
    else 
        send !s
    return 
$!t:: 
    IfExist, .\link\alt-t.lnk 
        run %A_ScriptDir%\link\alt-t 
    else 
        send !t
    return 
$!u:: 
    IfExist, .\link\alt-u.lnk 
        run %A_ScriptDir%\link\alt-u 
    else 
        send !u
    return 
$!v:: 
    IfExist, .\link\alt-v.lnk 
        run %A_ScriptDir%\link\alt-v 
    else 
        send !v
    return 
$!w:: 
    IfExist, .\link\alt-w.lnk 
        run %A_ScriptDir%\link\alt-w 
    else 
        send !w
    return 
$!x:: 
    IfExist, .\link\alt-x.lnk 
        run %A_ScriptDir%\link\alt-x 
    else 
        send !x
    return 
$!y:: 
    IfExist, .\link\alt-y.lnk 
        run %A_ScriptDir%\link\alt-y 
    else 
        send !y
    return 
$!z:: 
    IfExist, .\link\alt-z.lnk 
        run %A_ScriptDir%\link\alt-z 
    else 
        send !z
    return 
