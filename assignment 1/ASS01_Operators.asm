
    .486                                       ; create 32 bit code
    .model flat, stdcall                       ; 32 bit memory model
    option casemap :none                       ; case sensitive
 
    include \masm32\include\masm32rt.inc
    
;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

.code                       ; Tell MASM where the code starts

start:                          ; The CODE entry point to the program

;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

main proc
    LOCAL temp:DWORD            ; temporary variable to store remainder

; ADD instruction
    print chr$("Add 2 registers: 10 + 25 = ") 
    mov eax, 10                 ; copy the IMMEDIATE number 10 into the EAX register
    mov ecx, 25                 ; copy the IMMEDIATE number 25 into the ECX register
    add ecx, eax                ; ADD EAX to ECX
    print str$(ecx)             ; show the result at the console
    print chr$(13,10)
    print chr$("add ecx, eax - ADD add eax to ecx, and clearing eax",13,10)
    print chr$(13,10,13,10)

; SUB instruction
    print chr$("Subtract 2 registers: 100 + 250 = ") 
    mov ebx, 10                 ; copy the IMMEDIATE number 10 into the EBX register
    mov edx, 25                 ; copy the IMMEDIATE number 25 into the EDX register
    sub edx, ebx                ; SUBTRACT EBX from EDX
    print str$(edx)             ; show the result at the console
    print chr$(13,10)
    print chr$("sub edx, ebx - SUB subtract ebx from edx, and clearing ebx",13,10)
    print chr$(13,10,13,10)

; MUL instruction
    print chr$("Multiply 2 registers: 10 * 25 = ")
    mov eax, 10                 ; copy the IMMEDIATE number 25 into the EAX register
    mov ecx, 25                 ; copy the IMMEDIATE number 10 into the ECX register
    mul ecx                     ; MULTIPLY EAX with ECX
    printf("%I64d\n",edx::eax)  ; show the result at the console
    print chr$(13,10)
    print chr$("mul ecx - MUL multiply eax with ecx, and put result in eax and edx",13,10)
    print chr$(13,10,13,10)

; IMUL instruction
    print chr$("Interger Multiply 2 registers: 10 * -25 = ") 
    mov eax, 10                 ; copy the IMMEDIATE number 25 into the EAX register
    mov ecx, 25                 ; copy the IMMEDIATE number 10 into the ECX register
    neg ecx                     ; turn number 10 in ECX register into number -10
    imul ecx                    ; MULTIPLY EAX with ECX
    printf("%I64d\n",edx::eax)  ; show the result at the console
    print chr$(13,10)
    print chr$("imul ecx - IMUL multiply eax with ecx, and put result in eax and edx",13,10)
    print chr$(13,10,13,10)

; DIV instruction
    print chr$("Divide 2 registers: 35 / 5 = ")
    mov eax, 35                 ; copy the IMMEDIATE number 35 into the EAX register
    mov ebx, 5                  ; copy the IMMEDIATE number 5 into the EBX register
    sub edx, edx                ; reset EDX register to 0
    div ebx                     ; DIVIDE EAX by EBX
    print str$(eax)             ; show the result at the console
    print chr$(13,10)
    print chr$("div ebx - DIV divide eax by ecx, and put result in eax and remainder in edx",13,10)
    print chr$(13,10,13,10)

; IDIV instruction
    print chr$("Interger Divide 2 registers: 35 / -5 = ")
    mov eax, 35                 ; copy the IMMEDIATE number 35 into the EAX register
    mov ebx, 5                  ; copy the IMMEDIATE number 5 into the EBX register
    neg ebx                     ; turn number 5 in EBX register into number -5
    sub edx, edx                ; reset EDX register to 0
    idiv ebx                    ; DIVIDE EAX by EBX
    print str$(eax)             ; show the result at the console
    print chr$(13,10)
    print chr$("idiv ebx - IDIV divide eax by ecx, and put result in eax and remainder in edx",13,10)
    print chr$(13,10,13,10)

    ret
main endp

; ллллллллллллллллллллллллллллллллллллллллллллл

end start                       ; Tell MASM where the program ends

