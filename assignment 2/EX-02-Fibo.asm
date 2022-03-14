
    .486
    .model flat, stdcall
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
    LOCAL posi:DWORD
    
; Input number position
    mov posi, sval(input("Enter number position : "))
    print chr$("Number at that position: ")

    mov var1, 1
    mov var2, 1
    mov eax, posi ; Check position

; Position 1 or 2
.if eax == 1 || eax == 2
    print chr$("1")

; Other positions
.else
loopy:
    cmp posi, 2
    je printfibo

    mov ecx, var1
    add ecx, var2

    xor edx, edx
    mov edx, var2
    mov var1, edx
    mov var2, ecx

    dec posi
    jmp loopy

printfibo:
    print str$(ecx)

.endif

    ret
main endp

; ллллллллллллллллллллллллллллллллллллллллллллл

end start                       ; Tell MASM where the program ends

