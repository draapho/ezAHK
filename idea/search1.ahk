/*
-- search a word in text-files SEARCHWORDTEXTFILE.ahk
1-select a folder to search
2-type in searched word and Enter
-- see found words in line (and plus/minus 1-line)
3- once click to path opens text-file
*/


#NoEnv
setworkingdir, %a_scriptdir%

autotrim,off
transform,S,chr,32

Gui,1:Font,  S10 CDefault , FixedSys

SW=%A_screenwidth%
SH=%A_screenheight%
DW :=(SW*99)/100
DH :=(SH*52)/100
DIF:=(SH* 1)/100
LVW:=(DW-(1*DIF))
LVH:=(DH-(5*DIF))

BT1:=(DH-(4*DIF))
T1 :=(LVW-DIF)


menu,S1,Add,&Select Folder,MH1
menu,S1,Add,&About,MH3
menu,myMenuBar,Add,Select Folder,:S1
gui,1:menu,MyMenuBar


Gui,1:Add,Edit,  x10   y%BT1% w180 h20 vWordToSearch
Gui,1:Add,Button,x200  y%BT1% w0   h0 gSEARCH2 default,
Gui,1:Add, ListView,grid backgroundD4D0C8 x0 y0 w%LVW% h%LVH% +hscroll altsubmit gLW2 vLW1,SCRIPT
LV_ModifyCol(1,T1)
Gui,1:Show,x0 y0 w%DW% h%DH%,Search for a word in textfile and open text
return
;-------------------------------------------------------------


search2:
Gui,1:submit,nohide
Gui,1:Default
if MF=
   {
   msgbox, select first a folder
   return
   }

if WordToSearch=
   {
   msgbox,Search is empty
   return
   }

LV_Delete()
PathToSearch = %MF%\
Z1===========================================================================================================
XM1=-1=
XMM=_0=
XMP=+1=

Loop,%MF%\*.txt,0,1
{
   Loop Read, %A_LoopFileFullPath%
   {
      if FOUND=1
          {
         LV_Add("",XMP A_LoopReadLine)       ;Next Line Plus1
         LV_Add("",Z)                        ;NOTHING
         FOUND=
          }

      IfInString A_LoopReadLine, %WordToSearch%
      {
         I++
         ALF=%A_LoopFileFullPath%
         if ALF<>%ALF1%
             {
             ;write once
             LV_Add("",Z1)              ;TrennLinie
             LV_Add("",ALF)             ;filename
             }

         LV_Add("",XM1 ALF11)            ;Line minus 1
         LV_Add("",XMM A_LoopReadLine)   ;searched

         ALF1=%A_LoopFileFullPath%
         FOUND=1
      }
    ALF11=%A_LoopReadLine%               ;LINE minus 1
   }
}

; Nothing found?
NFX=------- Nothing Found -----------
if I<1
LV_Add("",NFX)

ALF=
ALF1=
NFX=
Z=
Return


;---------------------------------------------------------------------
MH3:
msgbox,SearchText.ahk 2007-01-30-- garry`r`nhttp://www.autohotkey.com
return


MH1:
DF:=A_desktop
FileSelectFolder,MF,%DF%,3            ;search from predefined folder DF
if MF=
   return
Gui,1:Default
LV_Delete()
return

;========================================================================
LW2:
GuiControlGet,LW1
Gui,1:submit,nohide
if A_GuiEvent=Normal
   {
   LV_GetText(C1,A_EventInfo,1)
   stringmid,AA,C1,2,2
   if AA=:\
     {
     SplitPath, C1, name, dir, ext, name_no_ext, drive
     if ext=txt
       run,%C1%
     return
      }
   }
return

Guiclose:
Exitapp