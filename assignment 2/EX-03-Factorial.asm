
    .486
    .model flat, stdcall
    option casemap :none
 
    include \masm32\include\masm32rt.inc

    factorial PROTO :DWORD
    
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

.code                       ; Tell MASM where the code starts

start:                          ; The CODE entry point to the program
    call main
    exit

; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

main proc
    LOCAL n:DWORD
    
; Input number position
    mov n, sval(input("Enter number n : "))
    print chr$("Factorial of n: ")
    invoke factorial, n

    ret
main endp

; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
factorial proc base:DWORD
    mov ebx, 1
    
loopy:
    cmp base, 0
    je printfac

    mov eax, ebx
    mov ebx, base
    mul ebx
    mov ebx, eax

    dec base
    jmp loopy

printfac:
    mov eax, ebx
    print str$(eax)
    ret
factorial endp
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

end start                       ; Tell MASM where the program ends

