.model small
    .486
    .stack 100h
    .data
res_name        db  'result.txt', 0
register_line   db  'eaxcxdxbxspbpsidi, ', 0
command_line    db  'BTC JMP DAS', 13, 10
support_line    db  '[*2*4*8+-]dword ptr ', 13, 10
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
        xor     dx, dx
        int     21h
        
        sub     ax, 3
        mov     di, ax           
    
        mov     AX, 4200h 
        xor     DX, DX 
        int     21h 
        
        mov     ah, 3Fh                 
        mov     cx, di
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
        jmp     after_exp
while:
        pop    dx
        pop    dx
        pop    dx
        mov    sp, 0100h
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
reg_or_mem:        
        lodsb
        sal     al, 1                             
        jns     st_work_mem
        jc      register_exp                      
st_work_mem:
        cmp     sp, 100h
        je      skobka0
        pop     ax
        cmp     sp, 100h
        je      er
        pop     bx
        cmp     sp, 100h
        je      che
        pop     cx
        pop     dx
        mov     sp, 100h
        cmp     cx, 53h
        je      wr_seg_cx
che:
        cmp     bx, 53h
        je      wr_seg_bx
        push    bx
er:     
        cmp     ax, 65h
        jne     p
        push    ax
        mov     bx, [descr]
        mov     cx, 1
        mov     dx, offset support_line+10
        call    file_write_proc
        jmp     skobka0
p: 
        push    ax
        jmp     skobka0
wr_seg_cx:
        cmp     dx, 65h
        jne     next_push1
        push    dx
        jmp     next_push2
next_push1:
        cmp     ax, 65h
        jne     exitt_push;next_push2
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
        mov     cx, 9
        mov     dx, offset support_line+11
        call    file_write_proc
        mov     dx, offset [len]
        mov     cx, 1
        call    file_write_proc
        mov     [len], 53h
        call    file_write_proc
        mov     [len], 3Ah
        call    file_write_proc
        jmp     skobka
skobka0:
        mov     bx, [descr]
        mov     cx, 9
        mov     dx, offset support_line+11
        call    file_write_proc
skobka:                              
        mov     cx, 1
        mov     bx, [descr]
        mov     dx, offset support_line
        call    file_write_proc
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
        dec     si
        lodsb
        cmp     al, 0FFh
        jne     tab; EB/EA/E9 
        mov     bp, 3
        jmp     reg_or_mem
        
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
        jnz     a1
        call    op_ax
        jmp     write_op
a1:
        cmp     dh, 40h
        jl      op1_l
        jne     s1
        call    op_sp
        jmp     write_op
s1:
        cmp     dh, 60h
        jge     b1
        call    op_bp
        jmp     write_op
b1:
        jne     s2
        call    op_si
        jmp     write_op
s2:  
        call    op_di
        jmp     write_op
op1_l:
        cmp     dh, 20h
        jge     c1
        call    op_cx
        jmp     write_op
c1:
        cmp     dh, 30h
        jl      b2
        call    op_bx
        jmp     write_op
b2:
        call    op_dx
        jmp     write_op       
a2:
        cmp     al, 0D0h
        jl      d2
        call    op_dx
        jmp     write_op
d2:
        call    op_cx
        jmp     write_op
b4:  
        call    op_sp
        jmp     write_op
operand_2:
        sar     ax, 3
        btr     ax, 4
        btr     ax, 3
        bt      ax, 0
        jc      continue3_1
        bt      ax, 1
        jnc     continue3_2
        cmp     al, 2
        je      w_dx
        call    op_si
        jmp     write_op
w_dx:
        call    op_dx
        jmp     write_op
continue3_2:
        or      al, al
        je      w_ax
        call    op_sp
        jmp     write_op
w_ax:
        call    op_ax
        jmp     write_op
continue3_1:
        bt      ax, 1
        jnc     continue4_1
        cmp     al, 7
        je      w_di
        call    op_bx
        jmp     write_op
w_di:
        call    op_di
        jmp     write_op
continue4_1:
        cmp      al, 1
        je      w_cx
        call    op_bp
        jmp     write_op
w_cx:
        call    op_cx
        jmp     write_op
d3:
        call    op_si
        jmp     write_op   
op_ax:
        mov     dx, offset register_line+1
        ret  
op_cx:
        mov     dx, offset register_line+3
        ret
op_dx:
        mov     dx, offset register_line+5
        ret         
op_bx:
        mov     dx, offset register_line+7
        ret
op_sp:
        mov     dx, offset register_line+9
        ret
op_bp:
        mov     dx, offset register_line+11
        ret
op_si:
        mov     dx, offset register_line+13
        ret
op_di:
        mov     dx, offset register_line+15
        ret
write_op:
        mov     cx, 2
        call    file_write_proc
mee:
        inc     bp
        cmp     bp, 2
        jge     tab       
        mov     dx, offset register_line+17
        call    file_write_proc
        pop     dx
        push    dx
        cmp     dx, 67h
        jne     hhhh
        pop     dx
hhhh:
        jmp     register_exp
operand_mem0:
        xor     bp, bp
operand_mem:
        dec     si
        lodsb
        sal     al, 1
        js      tab                         ;mod    01
        jc      tab                         ;mod    10
                                            ;mod    00 
        sal     al, 4
        bt      ax, 7        
        jc      no_sib
        jmp     tab;maybe sib
no_sib: 
        mov     cx, 2
        bt      ax, 6
        jc      n_sib_bx_num
        bt      ax, 5
        jc      w_di9
        call    op_si
        call    file_write_proc
        jmp     close_skobka
w_di9:
        call    op_di
        call    file_write_proc
        jmp     close_skobka
n_sib_bx_num:
        bt      ax, 5
        jc      w_bx9
        ;num
        jmp     close_skobka
w_bx9:
        call    op_bx
        call    file_write_proc
        jmp     close_skobka
close_skobka:
        mov     cx, 1
        mov     dx, offset support_line+9
        call    file_write_proc
        cmp     bp, 3
        je      i
        xor     bp, bp
i:
        jmp     mee
        

file_write_proc:
        mov     ah, 40h
        int     21h
        ret
end start