    .model small
    .486
    .stack 100h
    .data
res_name        db  'result.txt', 0
register_line   db  'eaxcxdxbxspbpsidi, ', 0
command_line    db  'BTC JMP DAS', 13, 10
support_line    db  '[*2 4 8+-]dword ptr ', 13, 10
file_name       db  'com.com'
len             dw  ?
    .data?
descr           dw  ?
buff            db  1234  dup(?)
    .code
start: 
        mov     ax, @data
        mov     ds, ax
        mov     es, ax
        
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
        mov    [res_name], 0h
        pop    dx
        cmp    sp, 100h
        jge    after_expe
        pop    dx
        cmp    sp, 100h
        jge    after_expe
        pop    dx
after_expe:
        mov    sp, 0100h
after_exp:
        xor     di, di
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
        jnz     imm8                                  ;work with rm16/imm8 (rm32/imm8)    /BTC
reg_or_mem:
        lodsb
        sal     al, 1                             
        jns     st_work_meme
        jc      register_exp
st_work_meme:
         cmp     bp, 0FFFFh
         jz      st_work_mem
         or     bp, bp
         jz     st_work_mem
         inc    bp       
st_work_mem:
        mov     [len], 0044h
        jmp     bp_opredelitel
    met:
        cmp     sp, 100h
        je      wr_seg
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
        cmp     bx, 65h
        jne     lll
        jmp     dshka
lll: 
        cmp     ax, 65h
        jne     p
        push    ax
dshka:
        cmp     al, 67h
        jne     k
        push    ax
k:
        mov     bx, [descr]
        mov     cx, 1
        mov     dx, offset support_line+10
        call    file_write_proc
        jmp     wr_seg
p: 
        push    ax
        jmp     wr_seg
wr_seg_cx:
        cmp     dx, 65h
        jne     next_push1
        push    dx
        jmp     next_push2
next_push1:
        cmp     ax, 65h
        jne     exitt_push
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
        xchg    di, ax
        mov     cx, 1
        mov     dx, offset support_line+10
        call    file_write_proc
        xchg    di, ax
        jmp     wr_seg
l:
        mov     [len], ax
wr_seg: 
        cmp     bp, 3
        je      j
        mov     cx, 9
        mov     dx, offset support_line+11
        call    file_write_proc
j:
        mov     dx, offset [len]
        mov     cx, 1
        call    file_write_proc
        mov     [len], 53h
        call    file_write_proc
        mov     [len], 3Ah
        call    file_write_proc
        jmp     skobka
skobka:                              
        mov     cx, 1
        mov     bx, [descr]
        mov     dx, offset support_line
        call    file_write_proc
        pop     ax
        push    ax
        cmp     ax, 67h
        je      expi
        jmp     operand_mem        
tab:
        xor     bp, bp
        mov     cx, 2
        mov     dx, offset [command_line+11]
        call    file_write_proc
        mov     al, [res_name]
        mov     cx, [len]
        mov     [len], 0h
        cmp     cl, 8
        jne     end_dis
        lodsb     
end_dis:       
        cmp     al, 8h 
        je      shift8
        cmp     al, 16h 
        je      shift16
        lodsb
        dec     si
        or      al, al
        jz      shift8
        jmp     endd
shift16:
        lodsb
shift8:
        xor    al, cl
        jz     Sibend
        lodsb
endd:
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
        mov     bp, 2
        jmp     reg_or_mem
        
register_exp:        
        pop     dx
        push    dx
        cmp     dl, 65h
        jne     operand_check
        jmp     exp
expi:
        cmp     bp, 3
        jne     btc_32
        neg     bp
        jmp     exp
btc_32:
        mov     bp, 0FFFEh
        cmp     ax, 67h
        je      b32setka 
exp:        
        mov     dx, offset register_line
        mov     cx, 1
        mov     bx, [descr]
        call    file_write_proc
        cmp     bp, 00FFh
        je      operand_mem0
        cmp     bp, 4
        je      operand_mem
operand_check:
        dec     si
        lodsb
        cmp     bp, 2
        jz      jj
        cmp     bp, 0FFFEh
        je      jj
        or      bp, bp
        js      jj
        jnz     operand_2
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
SIBoperand_2:
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
        or      bp, bp
        js      btc_32op2 
        cmp     bp, 2
        jge     tab
        mov     cx, 2
        mov     dx, offset register_line+17
        call    file_write_proc
        or      bp, bp
        jnz     dk
        xor     di, di
        call    num8
        jmp     tab
Sibend:
       lodsb
       jmp      tab
dk:
        pop     dx
        push    dx
        cmp     dx, 67h
        jne     hhhh
        pop     dx
hhhh:
        jmp     register_exp
mod01:
        push    8h
        jmp     mod00
mod10:
        push    16h
        jmp     mod00
operand_mem0:
        xor     bp, bp
operand_mem:
        dec     si
        lodsb
        pop     dx
        cmp     dl, 67h
        je      b32setka
        push    dx
        sal     al, 1
        js      mod01                        
        jc      mod10                        
mod00:                                            
        sal     al, 4
        bt      ax, 7        
        jc      no_sib
        bt      ax, 6
        jc      m00rm1x
        call    op_bx
        mov     cx, 2
        xchg    di, ax
        call    file_write_proc
        call    add_plus_symb
b:
        xchg    di, ax
        bt      ax, 5
        jc      m00rm001
        mov     cx, 2
        call    op_si
        call    file_write_proc
dist_check:
        pop     di
        sub     sp, 2
        cmp     di, 8h
        jne     next_var
        call    add_plus_symb
        xor     di, di
        call    num8
        mov     [res_name], 8h
        dec     si
        add     sp, 2
        jmp     close_skobka
next_var:
        cmp     di, 16h
        jne     close_skobka
        call    add_plus_symb
        xor     di, di
        call    num16
        mov     [res_name], 16h
        add     sp, 2
        jmp     close_skobka 
m00rm1x:
        call    op_bp
        mov     cx, 2
        xchg    di, ax
        call    file_write_proc
        call    add_plus_symb
        jmp     b
no_sib: 
        mov     cx, 2
        bt      ax, 6
        jc      n_sib_bx_num
        bt      ax, 5
        jc      w_di9
        call    op_si
        call    file_write_proc
        jmp     dist_check
w_di9:
        call    op_di
        call    file_write_proc
        jmp     dist_check
n_sib_bx_num:
        bt      ax, 5
        jc      w_bx9
        call    num16
        mov     [res_name], 16h        
        jmp     close_skobka
w_bx9:
        call    op_bx
        call    file_write_proc
        jmp     dist_check
close_skobka:
        mov     cx, 1
        mov     dx, offset support_line+9
        call    file_write_proc
        cmp     bp, 3
        jge     i
        js      mee
        xor     bp, bp
i:
        jmp     mee
btc_32op2:
        cmp     bp, 0FFFEh
        jne     btc_w
        mov     bp, 1
        jmp     close_skobka
btc_w: 
        cmp     bp, 100h
        jne     s
        mov     bp, 1
        
s:
        xor     bp, bp
        jmp     close_skobka
imm8:
        mov     bp, 0FFFFh
        jmp     reg_or_mem
m00rm001:
        mov     cx, 2
        call    op_di
        call    file_write_proc
        jmp     dist_check 
b32setka:
        dec     si
        lodsb               
        btr     ax, 3
        btr     ax, 4
        btr     ax, 5
        btr     ax, 6
        btr     ax, 7
        cmp     al, 4
        je      SIBb        
        jmp     exp; optional string
SIBb:
        xor     di, di
        call    add_e
        inc     cx
        lodsb
        sal     al, 1
        jc      Smod10_11
        jns     Sop1
        mov     di, 2
        jmp     Sop1
Smod11:
        mov     di, 8
        jmp     Sop1
Smod10_11:
        js      Smod11
                             ;scale 4
        mov     di, 4
Sop1:         
        sal     al, 1
        bt      ax, 7
        jc      index1xx
        bt      ax, 6
        jc      index_01x
        bt      ax, 5
        jnc     ind_000
                                ;index 001 
        call    op_cx
index_wr:
        call    file_write_proc
        call    send_index 
        call    add_plus_symb 
        jmp     base
ind_000:
        call    op_ax
        jmp     index_wr
index_01x:
        bt      ax, 5
        jnc     ind_010                                    ;ind_011

        call    op_bx
        jmp     index_wr
ind_010:
        call    op_dx
        jmp     index_wr
index1xx:
        bt      ax, 6
        jc      index11x
      ;INDEX101 -> ind_100 NONE
        call    op_bp
        jmp     index_wr
index11x:
        bt      ax, 5
        jc      index111
        call    op_si
        jmp     index_wr
index111:
        call    op_di
        jmp     index_wr
        
base:
        call    add_e
        mov     bp, 0FFFeh
        dec     si
        lodsb
        dec     si
        btr     ax, 7
        btr     ax, 6
        btr     ax, 5
        mov     [len], 8h
        jmp     SIBoperand_2        
        
file_write_proc:
        mov     ah, 40h
        mov     bx, [descr]
        int     21h
        ret
add_e:
        mov     dx, offset register_line
        mov     cx, 1
        mov     bx, [descr]
        call    file_write_proc
        ret
add_plus_symb:
        mov     cx, 1
        mov     dx, offset support_line+7
        call    file_write_proc
        ret
num8:
            lodsb
            sal     ax, 8
            
            xor     di, di
            mov     cx, 2
            call    num
            xor     di, di
            ret
            
num16:
            xor     di, di
            lodsw
            mov     cx, 4
            call    num
            xor     di, di
            sub     si, 2
            ret
num:
        smen:
            or      di, di
            jnz     f
            bt      ax, 15
            jnc     f
            bt      ax, 13
            jnc     f
            push    ax
            push    cx
            mov     cx, 1
            mov     [file_name], 30h
            mov     dx, offset [file_name]
            call    file_write_proc
            inc     di
            pop     cx
            pop     ax
        f:
            rol     ax, 4
            push    ax
            push    cx
            btr     ax, 4
            btr     ax, 5
            btr     ax, 6
            btr     ax, 7
            movzx   ax, al
            cmp     al, 9
            jle     ado
            add     al, 7
        ado:
            add     al, 30h
            mov     [file_name], al
            mov     cx, 1
            mov     dx, offset [file_name]
            call    file_write_proc
            inc     di
            pop     cx
            dec     cx
            pop     ax
            or      cx, cx
            jnz     smen       
            xor     di, di
            mov     cx, 1
            mov     [file_name], 68h
            mov     dx, offset [file_name] 
            call    file_write_proc
            ret
close_skobka_proc:
            mov     cx, 1
            mov     dx, offset support_line+9
            call    file_write_proc
            ret
            
bp_opredelitel:
            xor     ax, ax
            dec     si
            lodsb   
            mov     di, ax
            btr     di, 3
            btr     di, 4
            btr     di, 5
            btr     di, 6
            btr     di, 7 
            cmp     sp, 00FCh
            jg      two_push_max
            jmp     more
two_push_max: 
            cmp     sp, 00FEh
            je      ch_push
            jmp     bi16 
ch_push: 
            pop     dx
            push    dx
            cmp     dx, 67h
            je      bi32
            jmp     bi16
more:
            cmp     sp, 00FAh
            je      e
            jl      bi32
            pop     dx
            push    dx
            cmp     dx, 67h
            je      bi32
            jmp     bi16
bi16:       
            sal     al, 1
            js      ch_in_reg
            jmp     mod0x
ch_in_reg:
            jc      work16
            jmp     e
work16: 
            mov     ax, di
            cmp     al, 4
            je      smena
            cmp     al, 5
            jg      e
            je      smena
            jmp     e
mod0x:
            mov     ax, di
            cmp     al, 2
            je      smena
            cmp     al, 3
            je      smena
            jmp     e
bi32:
            sal     al, 1
            js      reg_or_dis32
            jc      step
            mov     ax, di
            cmp     al, 4
            je      siib_ch
            jmp     e
reg_or_dis32:
            jc      work16
step:
            mov     ax, di
            cmp     al, 4
            je      siib_ch
siib_ch:
            lodsb
            dec     si
            mov     di, ax
            sal     al, 1
            btr     ax, 7
            btr     ax, 0
            btr     ax, 1
            btr     ax, 2
            btr     ax, 3
            cmp     al, 50h
            je      smena
            mov     ax, di
            btr     ax, 3
            btr     ax, 4
            btr     ax, 5
            btr     ax, 6
            btr     ax, 7
            cmp     ax, 5
            je      smena
            jmp     e 
smena:
            mov     [len], 53h
e:
            xor     di, di
            jmp     met
send_index:
            or      di, di
            jz      stop
            mov     cx, 1
            mov     dx, offset support_line+1
            call    file_write_proc
            cmp     di, 9
            jle     ii
            add     di, 9
ii:       
            add     di, 30h
            mov     [len], di
            mov     dx, offset [len]
            xor     di, di
            call    file_write_proc
stop:   
            ret
end start