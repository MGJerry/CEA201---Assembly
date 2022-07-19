; ####################################################################################

  .486
  .model flat, stdcall
  option casemap :none   ; case sensitive

; ####################################################################################

  include \masm32\include\masm32rt.inc
  include \masm32\include\Fpu.inc

  includelib \masm32\lib\Fpu.lib

; ####################################################################################

.data
    divisor       dt 0
    dividend      dt 0
    result        dt 0
    divisor_inp   db "12",0
    dividend_inp  db "2",0
    result_out    db 16 dup(0)

; #################################################################################### 

.code

start:

; #################################################################################### 

main proc
;    LOCAL var1:DWORD            ; 2 REAL4 integral variables
;    LOCAL var2:DWORD            ; 
    
; Input 2 interger variables
;    mov var1, sval(input("Enter number 1 : "))
;    mov var2, sval(input("Enter number 2 : "))

; Convert divisor and dividend inputs to REAL10 numbers in FPU

    invoke FpuAtoFL, ADDR divisor_inp, ADDR divisor, DEST_MEM
    invoke FpuAtoFL, ADDR dividend_inp, ADDR divisor, DEST_MEM

; The divisor is divided by the dividend

    invoke FpuDiv, ADDR divisor, ADDR dividend, ADDR result, SRC1_REAL or SRC2_REAL or DEST_MEM

; Convert result to alphanumeric with 2 decimals and display

    invoke FpuFLtoA, ADDR result, 2, ADDR result_out, SRC1_REAL or SRC2_DIMM

; Print out result

    printf("%f", result_out)

main endp

; #################################################################################### 

end start

; #################################################################################### 