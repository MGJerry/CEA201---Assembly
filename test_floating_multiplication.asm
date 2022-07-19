; #################################################################

	.486
	.model flat, stdcall
	option casemap :none

	include \masm32\include\windows.inc
	include \masm32\include\user32.inc
	include \masm32\include\kernel32.inc
	include \masm32\include\masm32.inc
	include \masm32\include\Fpu.inc
  	
  	includelib \masm32\lib\user32.lib
	includelib \masm32\lib\kernel32.lib
	includelib \masm32\lib\masm32.lib
	includelib \masm32\lib\Fpu.lib

; ################################################################

.data
        miles                dq      0.6214
        km                    db     "99.5",0
        result               dd      0
        kilometers        dq      0

.code

start:
	invoke	StrToFloat,addr km,addr kilometers

	fld     miles
	fmul    kilometers
	
	invoke	FpuFLtoA,0,1,addr result,SRC1_FPU + SRC2_DIMM
	invoke	MessageBox, 0,addr result,0,MB_OK

    invoke	ExitProcess, 0

end start

; ################################################################