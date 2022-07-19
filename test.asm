;==============================================================================
    include \masm32\include\masm32rt.inc
;==============================================================================
bin$ MACRO DDvalue
    IFNDEF _rv_bin_string_
        .data
            _rv_bin_string_ db 36 dup(0)
        .code
    ENDIF
    invoke crt__itoa, DDvalue, ADDR _rv_bin_string_, 2
    EXITM <ADDR _rv_bin_string_>
ENDM
;==============================================================================
    .data
    .code
;==============================================================================
start:
;==============================================================================
    xor ebx, ebx
  @@:
    ;------------------------------------------------------------------
    ; Display value of EBX in hexadecimal, decimal, octal, and binary.
    ;------------------------------------------------------------------
    printf("%X\t%d\t%o\t%s\n", ebx, ebx, ebx, bin$(ebx))
    inc ebx
    cmp ebx, 256
    jb  @B
    inkey
    exit
;==============================================================================
end start