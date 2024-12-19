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
        mov     [res_name], 0
while:
        pop    dx
        cmp    sp, 100h
        jge    after_expe
        pop    dx
        cmp    sp, 100h
        je     after_expe
        pop    dx
after_expe:
        mov    sp, 0100h
        xor     di, di; ?????
after_exp:
        lodsb  
        or      al, al                      
        jz      exit                        
        cmp     al, 2Fh
        jne     exp_or_command
        mov     cx, 5
        mov     dx, offset [command_line+8]
        call    file_write_proc
        jmp     while        
exit:
        mov     ah, 4ch
        int     21h
exp_or_command:
        cmp     al, 66h
        jl      dop_check
        jne     exp_check_67
        push    66h
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
        mov     dx, offset command_line
        call    file_write_proc
        lodsb
        xor     al, 0BBh
        jnz     imm8                     
        jmp     reg_or_mem
imm8:
        mov     di, 100h
        jmp     reg_or_mem
jmp_check:
        dec     si
        lodsb
        cmp     al, 0EAh
        je      jumping_db
        xchg    di, ax
        mov     cx, 4
        mov     dx, offset command_line+4
        call    file_write_proc
        mov     bp, 2
        xchg    di, ax
        xor     di, di  
        cmp     al, 0FFh
        jne     other_jumping
        jmp     reg_or_mem
other_jumping:
        push    ax
        mov     [len], 24h
        mov     dx, offset [len]
        mov     cx, 1
        call    file_write_proc
        pop     ax
        cmp     al, 0E9h
        je      end_opc_jmp            ;/E9  = rel16
                                ; EB = rel8
        lodsb
        cmp     al, 0FEh
        je      tab
        push    ax
        mov     [len], 2Bh
        mov     dx, offset [len]
        call    file_write_proc        
        pop     ax
        add     al, 2
        dec     si
        mov     [si], al
        call    num8
        call    add_h
        inc     si
        jmp     tab
end_opc_jmp:
        lodsw
        cmp     ax, 00FEh
        je      tab
        push    ax
        mov     [len], 2Bh
        mov     dx, offset [len]
        call    file_write_proc        
        pop     ax
        add     ax, 2
        sub     si, 2
        mov     [si], ax
        call    num16
        call    add_h
        add     si, 2
        jmp     tab
jumping_db:
        mov     cx, 1
        mov     [file_name], 64h
        mov     dx, offset [file_name]
        call    file_write_proc
        mov     [file_name], 62h
        mov     dx, offset [file_name]
        call    file_write_proc
        mov     [file_name], 32
        mov     dx, offset [file_name]
        call    file_write_proc
        pop     di
        push    di
        cmp     di, 66h
        jne     simple_EA_jmp
        mov     cx, 1
        mov     [file_name], 36h
        mov     dx, offset [file_name]
        call    file_write_proc
        call    file_write_proc
        dec     si
        mov     cx, 7
        jmp     jmpp
simple_EA_jmp:
        dec     si
        mov     cx, 5
        push    cx
        jmp     jmp_no_exp
jmpp:   
        push    cx
        mov     cx, 2
        call    add_db_razdel
jmp_no_exp:
        call    num8    
        pop     cx
        loop    jmpp
        call    add_h
        jmp     tab       
reg_or_mem:
        lodsb
        sal     al, 1                             
        jns     st_work_meme
        jc      operand_1_register       ;- mode 11
st_work_meme:
         cmp    bp, 0FFFFh
         jz     st_work_mem
         or     bp, bp
         jz     st_work_mem
         inc    bp       
st_work_mem:
        mov     [len], 0044h
        xchg    bx, di
        jmp     bp_opredelitel
met:
        xchg    bx, di
        cmp     sp, 100h
        je      wr_seg
        pop     ax
        cmp     sp, 100h
        je      push1exp
        pop     bx
        cmp     sp, 100h
        je      push2exp
        pop     cx
        pop     dx
        mov     sp, 100h
        cmp     cx, 53h
        je      wr_seg_cx
        push    cx     
push2exp:
        cmp     bx, 53h
        je      wr_seg_bx
        push    bx
        push    ax
        xchg    ax, bx
        jmp     check_66        
push1exp:
        push    ax
check_66:
        cmp     ax, 66h
        jne     wr_seg
        jmp     dshka
dshka:
        mov     cx, 1
        mov     dx, offset support_line+10
        call    file_write_proc
        jmp     wr_seg
wr_seg_cx:
        mov     [len], bx
        cmp     dx, 66h
        jne     et
        push    dx
        push    ax
        jmp     dshka
et:        
        push    ax
        jmp     wr_seg
wr_seg_bx:
        mov     [len], ax
        cmp     cx, 66h
        jne     wr_seg
        push    cx
        jmp     dshka
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
        mov     [len], 0        
skobka:                              
        mov     cx, 1
        mov     dx, offset support_line
        call    file_write_proc
        pop     ax
        push    ax
        cmp     ax, 67h
        je      setka32
        jmp     setka16
tab:
        xor     bp, bp
        mov     cx, 2
        mov     dx, offset [command_line+11]
        call    file_write_proc
        mov     al, [res_name]
        mov     cx, [len]
        mov     [len], 0
        mov     [res_name], 0
        cmp     al, 10h
        je      dis016
        cmp     cl, 8
        jne     nexxt
        jmp     dis08
nexxt:     
        cmp     cl, 10h
        jne     endd
dis016:
        lodsb
dis08:
        lodsb
endd:
        jmp     while         
operand_1_register:        
        pop     dx
        push    dx
        cmp     dl, 66h
        jne     operand_reg_check
        call    add_e
operand_reg_check:
        dec     si
        lodsb
        cmp     bp, 2
        je      check_op2
        or      bp, bp
        jnz     operand_2
check_op2:
        btr     ax, 3
        btr     ax, 4
        btr     ax, 5
        btr     ax, 6
        btr     ax, 7
for_32bit:
        or      al, al
        jnz     choice_op
        call    op_ax
        jmp     write_op  
choice_op:
        bt      ax, 2
        jc      reg1xx 
        bt      ax, 1
        jc      reg01x    
        call    op_cx
        jmp     write_op  
reg1xx:
        bt      ax, 1
        jc      reg11x
        bt      ax, 0
        jc      choice_bp
        call    op_sp
        jmp     write_op  
choice_bp:
        cmp     bp, 2000h
        jl      no_exp67_bp
        add     [len], 8
no_exp67_bp:
        call    op_bp
        jmp     write_op  
reg11x:
        bt      ax, 0
        jc      choice_di
        call    op_si
        jmp     write_op  
choice_di:
        call    op_di
        jmp     write_op  
reg01x:
        bt      ax, 0
        jc      choice_bx
        call    op_dx
        jmp     write_op  
choice_bx:
        call    op_bx
        jmp     write_op  
operand_2:
        sar     ax, 3
        jmp     check_op2  
d_checking_Sib:
        inc     si
        jmp     dist_check
write_op:
        mov     cx, 2
        call    file_write_proc
ch_32:      
        cmp     bp, 2050h
        jg      d_checking_Sib
        cmp     bp, 2000h
        jl      cross
fix:
        btr     bp, 15
        btr     bp, 14
        btr     bp, 13
        btr     bp, 12               
        jmp     dist_check
cross:
        inc     bp
        cmp     bp, 2
        jge     tab
        mov     cx, 2
        mov     dx, offset register_line+17
        call    file_write_proc
        or      bp, bp
        jnz     opr_operand_2
        jmp     tab
opr_operand_2:
        cmp     sp, 100h
        jge     dop_check_reg_or_num
        pop     di
        cmp     di, 100h
        jl      dop_check_reg_or_num
        je      nodis
imm_op2:
        cmp     di, 108h
        je      dis8
        cmp     di, 110h
        je      dis16
        cmp     di, 132h
        je      dis32
        cmp     di, 8
        je      dis8
        cmp     di, 10h
        je      dis16
        cmp     di, 32h
        je      dis32
        lodsb
        dec     si
        or      al, al
        jnz     dis8
        inc     si
        jmp     nodis
dis32:
        sub     [res_name], 10h
        lodsw
dis16:
        lodsb
dis8:
        lodsb
nodis:
        lodsb
        or      al, al
        jnz     write_op2
        sub     [len], 8
        inc     si
write_op2:
        dec     si
        call    num8
        call    add_h
        jmp     tab
dop_check_reg_or_num:
        sub     si, 2
        lodsb
        inc     si
        cmp     al, 0BBh
        je      op2_reg
        mov     al, [res_name]
        or      al, al
        jnz     po
        dec     si
po:
        jmp     imm_op2   
op2_reg:     
        pop     dx
        pop     cx
        push    cx
        push    dx
        cmp     cx, 66h
        jne     next
        jmp     enddd
next:
        cmp     dx, 66h
        jne     operand_reg_check
enddd:
        call    add_e
        jmp     operand_reg_check
mod10:
        add     di, 10h
        push    di
        jmp     mod00
mod01:
        add     di, 8h
        push    di
        jmp     mod00 
dist_check:
        pop     di
        push    di
        cmp     di, 66h
        jne     k
        push    di
        jmp     close_skobka

k:        
        or      di, di
        jz      close_skobka
        cmp     di, 100h
        je      close_skobka
        jl      no_BA
        btr     di, 8
no_BA:
        push    di
        cmp     di, 8h
        jne     next_var
        lodsb   
        dec     si
        or      al, al
        jz      close_skobka_iskl8
simpleee_wr_dis8:
        call    add_plus
        call    num8
        call    add_h
        dec     si
        add     [res_name], 8
close_skobka_iskl8:
        jmp     close_skobka
next_var:
        cmp     di, 10h
        jne     check_32
        call    add_plus
        call    num16
        call    add_h
        add     [res_name], 10h
        pop     di
        jmp     close_skobka 
check_32:
        cmp     di, 32h
        jne     close_skobka
        call    add_plus
        call    num32
        call    add_h
        add     [res_name], 32h
        pop     di
        jmp     close_skobka      
setka16: 
        dec     si
        lodsb
        sal     al, 1
        js      mod01                        
        jc      mod10
mod00:
        sar     al, 1            ;mod00
        btr     ax, 3
        btr     ax, 4
        btr     ax, 5
        btr     ax, 6
        btr     ax, 7
        or      al, al
        jnz     choice_mem
        mov     cx, 2
        call    op_bx
        call    file_write_proc
        dec     cx
        call    add_plus
        inc     cx
        jmp     choice_m_si
choice_mem:
        bt      ax, 2
        jc      mem16_1xx
        bt      ax, 1
        jc      mem16_01x
        mov     cx, 2
        call    op_bx
        call    file_write_proc
        dec     cx
        call    add_plus
        inc     cx
        jmp     choice_m_di
mem16_01x:
        mov     cx, 2
        call    op_bp
        call    file_write_proc
        dec     cx
        call    add_plus
        inc     cx
        bt      ax, 1
        jc      choice_m_di
choice_m_si:
        mov     cx, 2
        call    op_si
        call    file_write_proc
        jmp     dist_check
choice_m_di:
        mov     cx, 2
        call    op_di
        call    file_write_proc
        jmp     dist_check
mem16_1xx:
        bt      ax, 1
        jc      mem16_11x
        bt      ax, 0           
        jc      choice_m_di
        jmp     choice_m_si
mem16_11x:
        bt      ax, 0
        jnc     choice_num16
        mov     cx, 2
        call    op_bx
        call    file_write_proc
        jmp     dist_check 
choice_num16:
        call    num16
        call    add_h
        add     [res_name], 10h
        jmp     dist_check
kostil1:
        cmp     di, 32h
        je      li0
        jmp     kostil_continue
close_skobka:
        cmp     bp, 3000h
        je      kostil1
        jl      li
kostil_continue:
        dec     si
        jmp     li
li0:
        sub     [len], 8
li:    
        btr     bp, 12
        btr     bp, 13
        btr     bp, 14
        btr     bp, 15  
        mov     cx, 1
        mov     dx, offset support_line+9
        call    file_write_proc
        cmp     bp, 3
        jge     i
        js      cross
        xor     bp, bp
i:
        jmp     cross
mod_m_10:
        add     di, 32h
        push    di
        jmp     mod_m_00            
mod_m_01:
        add     di, 8
        push    di
        jmp     mod_m_00
setka32:        
        dec     si
        lodsb
        sal     al, 1
        jc      mod_m_10
        js      mod_m_01
mod_m_00:
        sar     al, 1
        btr     ax, 3
        btr     ax, 4
        btr     ax, 5
        btr     ax, 6
        btr     ax, 7
        cmp     al, 4
        je      SIBb
        cmp     al, 5
        jne     set_32
        pop     di
        push    di
        cmp     di, 8
        je      set_32
        cmp     di, 32h
        je      set_32
        cmp     di, 108h
        je      set_32
        cmp     di, 132h
        je      set_32
        call    num32
        call    add_h
        sub     si, 2
        lodsb
        inc     si
        cmp     al, 0BAh
        jne     close_skobka
        add     si, 4
        jmp     close_skobka
set_32:        
        push    ax
        call    add_e
        pop     ax
        add     bp, 2000h
        jmp     for_32bit
SIBb:
        call    add_e
        inc     cx
        xor     di, di
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
        call    add_plus
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
        dec     si
        lodsb
        dec     si
        mov     [len], 8
        add     bp, 4000h        
        jmp     check_op2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
        
        
       
        
add_plus:
        mov     cx, 1
        mov     dx, offset support_line+7
        call    file_write_proc
        ret               
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
         
file_write_proc:
        mov     ah, 40h
        mov     bx, [descr]
        int     21h
        ret
        
bp_opredelitel:
            xor     ax, ax
            dec     si
            lodsb
            cmp     di, 100h
            jne     c
            push    di
c:   
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
five:            
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
            jmp     five
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
            push    di
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
            pop     cx
            xor     cl, cl
            mov     di, cx
stop: 
            ret  
      
add_e:
        mov     dx, offset register_line
        mov     cx, 1
        mov     bx, [descr]
        call    file_write_proc
        ret

num32:        
        add     si, 3
        call    num8
        sub     si, 2
        call    num8
        sub     si, 3
        call    num16
        xor     di, di
        ret
num8:
            xor     di, di
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
            ret  
add_h: 
            mov     cx, 1
            mov     [file_name], 68h
            mov     dx, offset [file_name] 
            call    file_write_proc 
            ret
add_db_razdel:
            call    add_h
            mov     cx, 2
            mov     dx, offset register_line+17
            call    file_write_proc
            ret  
end start