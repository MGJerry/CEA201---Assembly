
    .486                                       ; create 32 bit code
    .model flat, stdcall                       ; 32 bit memory model
    option casemap :none                       ; case sensitive
 
    include \masm32\include\masm32rt.inc
    
;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

.code                       ; Tell MASM where the code starts

start:                          ; The CODE entry point to the program
    call main
    exit

;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

main proc
    LOCAL var1:DWORD
    LOCAL var2:DWORD

; Input first variable
    mov var1, sval(input("Enter number 1 : "))

loopy:
; Input second variable (non-zero)
    mov var2, sval(input("Enter non-zero number 2 : "))

; Check if second variable is non-zero (if yes, force user to re enter)
    cmp var2, 0
    je loopy

; Add
    printf ("%d + %d = ", var1, var2) 
    mov ecx, var1
    add ecx, var2
    print str$(ecx)
    print chr$(13,10)

; Sub
    printf ("%d - %d = ", var1, var2) 
    mov ecx, var1
    sub ecx, var2
    print str$(ecx)
    print chr$(13,10)

; Imul
    printf ("%d * %d = ", var1, var2) 
    mov eax, var1
    imul var2
    printf ("%ld",edx::eax)
    print chr$(13,10)

; Idiv
    printf ("%d / %d = ", var1, var2) 
    mov eax, var1
    cdq
    idiv var2
    printf("%ld",edx::eax)
    print chr$(13,10)

    ret
main endp

; ллллллллллллллллллллллллллллллллллллллллллллл

end start                       ; Tell MASM where the program ends

