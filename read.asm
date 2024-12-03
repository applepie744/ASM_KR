    .model small
    .486
    .stack 100h
    .data
res_name        db  'result.txt', 0
register_line   db  'eaxcxdxbxspbpsidi, ', 0
command_line    db  'BTC JMP DAS', 13, 10
support_line    db  '[*2*4*8+-]', 13, 10
file_name       db  'com.com'
len             dw  ?
    .data?
descr           dw  ?
buff            db  1234  dup(?)
    .code
start: 
        mov     ax, @data
        mov     ds, ax
        
        mov     ax,3D00h                
        mov     dx,offset file_name
        int     21h 
        
        mov     bx, ax
        mov     ax, 4202h               
        xor     cx, cx
        xor     dx, dx
        int     21h
        
        sub     ax, 3
        mov     len, ax           
    
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
        or      al, al                      
        jz      exit                        
        cmp     al, 2Fh
        jne     exp_check_reg
        mov     cx, 5
        mov     bx, [descr]
        mov     dx, offset [command_line+8]
        call    file_write_proc
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
        push    67h
        jmp     after_exp
dop_check:
        cmp     al, 0Fh
        je      btc_check
        mov     bl, al
        xor     bl, 70h
        js      jmp_check
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
        mov     cx, 4
        mov     bx, [descr]
        mov     dx, offset command_line
        call    file_write_proc
        lodsb
        xor     al, 0BBh
        jnz     exit                                  ;work with rm16/imm8 (rm32/imm8)    /BTC                                        
        lodsb
        sal     al, 1                             
        jns     st_work_mem
        jc      register_exp                      
st_work_mem:
        cmp     sp, 100h
        je      skobka
        pop     ax
        pop     bx
        pop     cx
        pop     dx
        mov     sp, 100h
        cmp     cx, 53h
        je      wr_seg_cx
        cmp     bx, 53h
        je      wr_seg_bx
        push    bx
        push    ax
        jmp     skobka
wr_seg_cx:
        cmp     dx, 65h
        jne     next_push1
        push    dx
        jmp     next_push2
next_push1:
        cmp     ax, 65h
        jne     next_push2
        push    ax
        jmp     exitt_push
next_push2:
        cmp     ax, 67h
        jne     exitt_push
        push    ax
exitt_push:
        mov     [len], bx
        jmp     wr_seg    
wr_seg_bx:
        cmp     cx, 65h
        jne     l
        push    cx
l:
        mov     [len], ax
wr_seg:        
        mov     bx, [descr]
        mov     dx, offset [len]
        mov     cx, 1
        call    file_write_proc
        mov     [len], 53h
        call    file_write_proc
        mov     [len], 3Ah
        call    file_write_proc
skobka:                              
        mov     cx, 1
        mov     bx, [descr]
        mov     dx, offset support_line
        call    file_write_proc
        mov     bp, 00FFh
        pop     ax
        push    ax
        cmp     ax, 67h
        je      exp
        jmp     operand_mem        
tab:
        xor     bp, bp
        mov     cx, 2
        mov     dx, offset [command_line+11]
        call    file_write_proc
        jmp     while                     
jmp_check:
        mov     cx, 4
        mov     bx, [descr]
        mov     dx, offset command_line+4
        call    file_write_proc
        lodsb
        mov     bp, 3           
register_exp:        
        pop     dx
        push    dx
        cmp     dl, 65h
        jne     operand_check 
exp:        
        mov     dx, offset register_line
        mov     cx, 1
        mov     bx, [descr]
        call    file_write_proc
        cmp     bp, 00FFh
        je      operand_mem0                                 
operand_check:
        dec     si
        lodsb
        cmp     bp, 3
        jz      jj
        or      bp, bp
        jnz     operand_2
        xor     bp, bp
jj: 
        shrd    dx, ax, 4
        jns     op1_other_zn
        btr     dx, 15
op1_other_zn:
        or      dh, dh
        jz      op_ax
        cmp     dh, 40h
        jl      op1_l
        je      op2_sp
        cmp     dh, 60h
        jl      op_bp
        je      op_si   
op2_di:
        mov     dx, offset register_line+15
        jmp     write_op
op1_l:
        cmp     dh, 20h
        jl      op_cx
        cmp     dh, 30h
        jge     op_bx
op2_dx:
        mov     dx, offset register_line+5
        jmp     write_op     
op_ax:
        mov     dx, offset register_line+1
        jmp     write_op         
op2_l:
        cmp     al, 0C8h
        jl      op_ax
        cmp     al, 0D0h
        jge     op2_dx
op_cx:
        mov     dx, offset register_line+3
        jmp     write_op
op2_rr:
        cmp     al, 0E8h
        jge     op_bp
        cmp     al ,0e0h
        jl      op_bx
op2_sp:
        mov     dx, offset register_line+9
        jmp     write_op
op_bp:
        mov     dx, offset register_line+11
        jmp     write_op
operand_2:
        cmp     al, 0D8h
        jl      op2_l
        je      op_bx
        cmp     al, 0F0h
        jl      op2_rr
        cmp     al, 0F8h
        jge     op2_di
op_si:
        mov     dx, offset register_line+13
        jmp     write_op
op_bx:
        mov     dx, offset register_line+7
        jmp     write_op
write_op:
        mov     cx, 2
        call    file_write_proc
        inc     bp
        cmp     bp, 2
        jge     tab       
        mov     dx, offset register_line+17
        call    file_write_proc
        jmp     register_exp
operand_mem0:
        xor     bp, bp
operand_mem:
        dec     si
        lodsb
        rcl     ax, 1
        js      tab                         ;mod    01
        jc      tab                         ;mod    10
                                            ;mod    00
        
        jmp     tab
file_write_proc:
        mov     ah, 40h
        int     21h
        ret
end start