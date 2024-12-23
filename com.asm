    .model tiny
    .486
    .data
A db 12h
B dw 1234h
    .code
    org 100h   
start:
;example      
        BTC     eax, eax
        BTC     ax, cx
        BTC     ax, dx
        BTC     ax, bx
        BTC     ax, sp
        BTC     ax, bp
        BTC     ax, si
        BTC     ax, di
        
        BTC     cx, ax
        BTC     cx, cx
        BTC     cx, dx
        BTC     cx, bx
        BTC     cx, sp
        BTC     cx, bp
        BTC     cx, si
        BTC     cx, di
        
        BTC     dx, ax
        BTC     dx, cx
        BTC     dx, dx
        BTC     dx, bx
        BTC     dx, sp
        BTC     dx, bp
        BTC     dx, si
        BTC     dx, di
        
        BTC     bx, ax
        BTC     bx, cx
        BTC     bx, dx
        BTC     bx, bx
        BTC     bx, sp
        BTC     bx, bp
        BTC     bx, si
        BTC     bx, di
        
        BTC     sp, ax
        BTC     sp, cx
        BTC     sp, dx
        BTC     sp, bx
        BTC     sp, sp
        BTC     sp, bp
        BTC     sp, si
        BTC     sp, di
        
        BTC     bp, ax
        BTC     bp, cx
        BTC     bp, dx
        BTC     bp, bx
        BTC     bp, sp
        BTC     bp, bp
        BTC     bp, si
        BTC     bp, di
        
        BTC     si, ax
        BTC     si, cx
        BTC     si, dx
        BTC     si, bx
        BTC     si, sp
        BTC     si, bp
        BTC     si, si
        BTC     si, di
        
        BTC     di, ax
        BTC     di, cx
        BTC     di, dx
        BTC     di, bx
        BTC     di, sp
        BTC     di, bp
        BTC     di, si
        BTC     di, di
               
        BTC     ds:[bx], ax
        BTC     es:[bx+si], cx
        BTC     ss:[bx+di], dx
        BTC     fs:[si], bx
        BTC     gs:[di], sp
        BTC     [bp+si], bp
        BTC     [bp+di], si
end start