; EX05_Numbers.asm
; Declare program model and all libraries using only one file

  include \masm32\include\masm32rt.inc 

 .data                       ; Declare global data
   txtmsg db "Is this number positive(0) or negative(1) :",0
   yes db "Is negative",0
   no db "Is not negative",0
   
.code                       
start:                          ; The CODE entry point to the program
    call main                   ; branch to the "main" procedure
    exit
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
main proc
    LOCAL a:DWORD            ; a string handle for the input data

; Input Negative
    print OFFSET txtmsg
    print chr$(13,10,13,10)
    mov eax, sval(input("Your choice: "))
.if eax == 1
    print OFFSET yes
.else
    print OFFSET no
.endif
    print str$(eax)
    ret
main endp

; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
show_text proc string:DWORD
    print chr$("This is what you typed at the cursor",13,10,"     *** ")
    print string                ; show the string at the console
    print chr$(" ***",13,10)
    ret
show_text endp
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

; ллллллллллллллллллллллллллллллллллллллллллллл

end start                       ; Tell MASM where the program ends