
    .486                                       ; create 32 bit code
    .model flat, stdcall                       ; 32 bit memory model
    option casemap :none                       ; case sensitive
 
    include \masm32\include\masm32rt.inc
    
;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

    .code                       ; Tell MASM where the code starts

    start:                          ; The CODE entry point to the program
        print chr$("======== Mua Xuan Chin ========",13,10)
        print chr$("Song co xanh tuoi gon toi troi",13,10)
        print chr$("Bao co thon nu hat tren doi",13,10)
        print chr$("Ngay mai trong dam xuan xanh ay",13,10)
        print chr$("Co ke theo chong bo cuoc choi",13,10)
    exit                            ; exit the program

;ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

    end start                       ; Tell MASM where the program ends
