
    .486
    .model flat, stdcall
    option casemap :none
 
    include \masm32\include\masm32rt.inc
    sum_func PROTO :DWORD, :DWORD
    
;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

.code                       ; Tell MASM where the code starts

start:                          ; The CODE entry point to the program

    call main
    exit
;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

main proc
    LOCAL var1:DWORD
    LOCAL var2:DWORD
    LOCAL loops:DWORD
    LOCAL sum:DWORD
    
; Input number of loops
    mov loops, sval(input("Enter number of loops : "))
    mov esi, 0

loopy:
    cmp esi, loops
    jge stop

; Input 2 interger variable
    mov var1, sval(input("Enter number 1 : "))
    mov var2, sval(input("Enter number 2 : "))

; Print out sum
    print chr$("Sum of 2 numbers: ")
    mov eax, var1
    add eax, var2
    print str$(eax)
    print chr$(13,10)
    inc esi
    jmp loopy
    
stop:
    ret
main endp

;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

end start                       ; Tell MASM where the program ends

