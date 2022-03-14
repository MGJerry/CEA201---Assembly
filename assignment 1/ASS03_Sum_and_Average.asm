
    .486                                       ; create 32 bit code
    .model flat, stdcall                       ; 32 bit memory model
    option casemap :none                       ; case sensitive
 
    include \masm32\include\masm32rt.inc
    
;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

.code                       ; Tell MASM where the code starts

start:                          ; The CODE entry point to the program

;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

main proc
    LOCAL var1:DWORD            ; 3 DWORD integral variables
    LOCAL var2:DWORD            ; 
    LOCAL var3:DWORD            ;
    LOCAL var4:DWORD            ; 

; Input 3 interger variables
    mov var1, sval(input("Enter number 1 : "))
    mov var2, sval(input("Enter number 2 : "))
    mov var3, sval(input("Enter number 3 : "))

; Sum all 3 intergers
    print chr$("Sum of 3 numbers: ") 
    mov ecx, var1               ; copy the var1 into the ECX register
    mov eax, var2               ; copy the var2 into the EAX register
    add ecx, eax                ; ADD var2 to var1
    mov eax, var3               ; copy the var3 into the EAX register
    add ecx, eax                ; ADD var3 to sum of var1 and var2
    mov var4, ecx
    print str$(var4)            ; print out sum
    print chr$(13,10)

; Getting average
    print chr$("Average of 3 numbers: ")
    mov eax, var4               ; copy the var4 into the EAX register
    mov ebx, 3                  ; copy the IMMEDIATE number 3 into the EBX register
    cdq
    idiv ebx                    ; DIVIDE EAX by EBX
    printf("%ld\n",edx::eax)    ; show the result at the console
    print chr$(13,10)
    

    ret
main endp

; ллллллллллллллллллллллллллллллллллллллллллллл

end start                       ; Tell MASM where the program ends

