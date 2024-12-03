    .model small
    .486
    .stack 100h
    .data
res_name        db  'result.txt', 0
register_line   db  'axcxdxbxspbpsidi, ', 0
command_line    db  'BTC JUMP DAS', 13, 10
file_name       db  'com.com'
len             dw  0,0
    .data?
descr           dw  ?
buff            db  1234  dup(?)
    .code
start: 
        mov     ax, @data
        mov     ds, ax  
        
        mov     ah,3Dh            
        mov     dx,offset file_name
        int     21h 
        
        mov     bx, ax
        mov     ax, 4202h               
        xor     cx, cx
        xor     dx, dx
        int     21h
        
        mov     len, ax
        mov     len+2, dx               
    
        mov     AX, 4200h 
        xor     DX, DX 
        int     21h 
        
        mov     ah, 3Fh                 
        mov     cx, len
        mov     DX, offset buff
        int     21h
        
        mov     ah, 3Eh                 
        int     21h
        
        mov     ah, 3ch             
        xor     cx, cx
        mov     dx, offset res_name
        int     21h
        mov     bx, ax
        mov     [descr], ax
        
        mov     SI, offset buff         
while:
        mov     sp, 0100h
after_exp:
        lodsb  
        cmp     al, 2Fh
        jne     exp_check_reg
        mov     ah, 40h
        mov     cx, 5
        mov     bx, [descr]
        mov     dx, offset [command_line+9]
        int     21h
        jmp     while
exit:
        mov     ah, 4ch
        int     21h
exp_check_reg:
        cmp     al, 66h
        jl      dop_check
        jne     exp_check_67
        push    65h
        jmp     after_exp
exp_check_67:
        cmp     al, 67h
        jne     segment_check
        push    65h
        jmp     after_exp
dop_check:
        cmp     al, 0Fh
        je      btc_check
        mov     bl, al
        xor     bl, 70h
        js      jmp_check
        cmp     al, 12h           ;;;;;;;;;;optional string
        je      exit              ;;;;;;;;;;optional string
        push    53h
segment_check:
        cmp     al, 3Eh
        jg      seg1
        jl      seg2
        push    44h
        jmp     after_exp
seg1:
        cmp     al, 64h
        jne     seg_65
        push    46h
        jmp     after_exp
seg_65:
        push    47h
        jmp     after_exp
seg2:
         cmp    al, 2Eh
         jl     seg_26
         jg     seg_36
         push   43h
         jmp    after_exp
seg_26:
         push   45h
         jmp    after_exp
seg_36:
         push   53h
         jmp    after_exp
btc_check:
        cmp     al, 0Fh
        jne     jmp_check
        mov     ah, 40h
        mov     cx, 4
        mov     bx, [descr]
        mov     dx, offset command_line
        int     21h
        lodsb
        xor     al, 0BBh
        jnz     exit                                  ;work with rm16/imm8 (rm32/imm8)    /BTC                                        
        lodsb
        cmp     al, 0C0h
        jl      btc_register_op                       ; + JLE and delete "AX, AX -version
        jg      exit                                  ; work with mem
        jmp     tab
tab:
        mov     ah, 40h
        mov     cx, 2
        mov     dx, offset [command_line+12]
        int     21h
        jmp     while                     
jmp_check:
        cmp     al, 12h                     ;;;;;;;;;;;;;;;;;;;;;;;;; optional string
        je      exit                        ;;;;;;;;;;;;;;;;;;;;;;;;; optional string
        or      al, al                      ;;;;;;;;;;;;;;;;;;;;;;;;; optional string
        jz      exit                        ;;;;;;;;;;;;;;;;;;;;;;;;; optional string
        mov     ah, 40h
        mov     cx, 4
        mov     bx, [descr]
        mov     dx, offset command_line+4
        int     21h
        lodsb
        cmp     al, 0e0h                    ;;;;;;;;;;;;;;;;;;;;;;;;; optional string
        jne     exit                        ;;;;;;;;;;;;;;;;;;;;;;;;; optional string
        jmp     tab                         ; continuation of the branch        \JUMP
btc_register_op:        
             
        jmp     while  
end start