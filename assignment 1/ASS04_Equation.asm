;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

    .486                    ; create 32 bit code
    .model flat, stdcall    ; 32 bit memory model
    option casemap :none    ; case sensitive
    
;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
 
    include \masm32\include\masm32rt.inc
    include \masm32\include\fpu.inc
       
; user must ran \masm32\fpulib\MAKE.BAT before this
    includelib \masm32\lib\Fpu.lib 
    
;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

.code                       ; Tell MASM where the code starts

start:                      ; The CODE entry point to the program

;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

main proc
    LOCAL a:DWORD
    LOCAL b:DWORD

; Input 3 interger variables
    print chr$("Phuong trinh ax + b = 0",13,10)
    mov a, sval(input("Enter a : "))
    mov b, sval(input("Enter b : "))
    mov ecx, a

; a is 0
.if ecx == 0
    print chr$("Phuong trinh vo nghiem!")

; a is not 0
.else
    print chr$("Nghiem cua phuong trinh la: ")
    mov eax, b
    neg eax
    mov ebx, a
    cdq
    idiv ebx
    printf("%ld",edx::eax)
    print chr$(13,10)

    ; Notes to smart people
    print chr$("Notes: If you are looking for decimal number, Huy gave up on that, it is too fucking hard")

.endif

    ret
main endp

; ллллллллллллллллллллллллллллллллллллллллллллл

end start                       ; Tell MASM where the program ends

