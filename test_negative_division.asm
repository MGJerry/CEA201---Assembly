
    option casemap :none                       ; case sensitive
 
    include \masm32\include\masm32rt.inc
    
;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

.code                       ; Tell MASM where the code starts

start:                          ; The CODE entry point to the program

;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

main proc
    LOCAL var1:DWORD            ; 2 REAL4 integral variables
    LOCAL var2:DWORD            ; 
    
; Input 2 interger variables
    mov var1, sval(input("Enter number 1 : "))
    mov var2, sval(input("Enter number 2 : "))

; Division (signed variable - meaning include negative numbers for dummies
    print chr$("After Division: ")
    mov eax, var1               ; copy the var4 into the EAX register
    mov ebx, var2               ; copy the IMMEDIATE number 3 into the EBX register
    cdq
    idiv ebx                    ; DIVIDE EAX by EBX
    printf("%ld\n",edx::eax)            ; show the result at the console
    print chr$(13,10)

; Remainder
    print chr$("Remainder: ")
    print chr$("Huy gave up on remainder, it is too fucking hard")

    ret
main endp

; ллллллллллллллллллллллллллллллллллллллллллллл

end start                       ; Tell MASM where the program ends

