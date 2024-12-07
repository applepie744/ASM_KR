    .model tiny
    .486
    .data
A db 12h
B dw 1234h
    .code
    org 100h   
start:
;exampl
        BTC     ax, ax
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
        
        BTC     eax, eax
        BTC     eax, ecx
        BTC     eax, edx
        BTC     eax, ebx
        BTC     eax, esp
        BTC     eax, ebp
        BTC     eax, esi
        BTC     eax, edi
        
        BTC     ecx, eax
        BTC     ecx, ecx
        BTC     ecx, edx
        BTC     ecx, ebx
        BTC     ecx, esp
        BTC     ecx, ebp
        BTC     ecx, esi
        BTC     ecx, edi
        
        BTC     edx, eax
        BTC     edx, ecx
        BTC     edx, edx
        BTC     edx, ebx
        BTC     edx, esp
        BTC     edx, ebp
        BTC     edx, esi
        BTC     edx, edi
        
        BTC     ebx, eax
        BTC     ebx, ecx
        BTC     ebx, edx
        BTC     ebx, ebx
        BTC     ebx, esp
        BTC     ebx, ebp
        BTC     ebx, esi
        BTC     ebx, edi
        
        BTC     esp, eax
        BTC     esp, ecx
        BTC     esp, edx
        BTC     esp, ebx
        BTC     esp, esp
        BTC     esp, ebp
        BTC     esp, esi
        BTC     esp, edi
        
        BTC     ebp, eax
        BTC     ebp, ecx
        BTC     ebp, edx
        BTC     ebp, ebx
        BTC     ebp, esp
        BTC     ebp, ebp
        BTC     ebp, esi
        BTC     ebp, edi
        
        BTC     esi, eax
        BTC     esi, ecx
        BTC     esi, edx
        BTC     esi, ebx
        BTC     esi, esp
        BTC     esi, ebp
        BTC     esi, esi
        BTC     esi, edi
        
        BTC     edi, eax
        BTC     edi, ecx
        BTC     edi, edx
        BTC     edi, ebx
        BTC     edi, esp
        BTC     edi, ebp
        BTC     edi, esi
        BTC     edi, edi
        
        BTC     word ptr ds:[bx+si], ax
        BTC     word ptr ss:[bx+si], cx
        BTC     word ptr cs:[bx+si], dx
        BTC     word ptr es:[bx+si], bx
        BTC     word ptr fs:[bx+si], sp
        BTC     word ptr gs:[bx+si], bp
        BTC     word ptr [bx+si], si
        BTC     word ptr [bx+si], di
        
        BTC     dword ptr [bx+si], eax
        BTC     dword ptr [bx+si], ecx
        BTC     dword ptr [bx+si], edx
        BTC     dword ptr [bx+si], ebx
        BTC     dword ptr [bx+si], esp
        BTC     dword ptr [bx+si], ebp
        BTC     dword ptr [bx+si], esi
        BTC     dword ptr [bx+si], edi
        
        BTC     word ptr ds:[bx+di], ax
        BTC     word ptr ss:[bx+di], cx
        BTC     word ptr cs:[bx+di], dx
        BTC     word ptr es:[bx+di], bx
        BTC     word ptr fs:[bx+di], sp
        BTC     word ptr gs:[bx+di], bp
        BTC     word ptr [bx+di], si
        BTC     word ptr [bx+di], di
        
        BTC     dword ptr [bx+di], eax
        BTC     dword ptr [bx+di], ecx
        BTC     dword ptr [bx+di], edx
        BTC     dword ptr [bx+di], ebx
        BTC     dword ptr [bx+di], esp
        BTC     dword ptr [bx+di], ebp
        BTC     dword ptr [bx+di], esi
        BTC     dword ptr [bx+di], edi
        
        BTC     word ptr ds:[bp+si], ax
        BTC     word ptr ss:[bp+si], cx
        BTC     word ptr cs:[bp+si], dx
        BTC     word ptr es:[bp+si], bx
        BTC     word ptr fs:[bp+si], sp
        BTC     word ptr gs:[bp+si], bp
        BTC     word ptr [bp+si], si
        BTC     word ptr [bp+si], di
        
        BTC     dword ptr [bp+si], eax
        BTC     dword ptr [bp+si], ecx
        BTC     dword ptr [bp+si], edx
        BTC     dword ptr [bp+si], ebx
        BTC     dword ptr [bp+si], esp
        BTC     dword ptr [bp+si], ebp
        BTC     dword ptr [bp+si], esi
        BTC     dword ptr [bp+si], edi
        
        BTC     word ptr ds:[bp+di], ax
        BTC     word ptr ss:[bp+di], cx
        BTC     word ptr cs:[bp+di], dx
        BTC     word ptr es:[bp+di], bx
        BTC     word ptr fs:[bp+di], sp
        BTC     word ptr gs:[bp+di], bp
        BTC     word ptr [bp+di], si
        BTC     word ptr [bp+di], di
        
        BTC     dword ptr [bp+di], eax
        BTC     dword ptr [bp+di], ecx
        BTC     dword ptr [bp+di], edx
        BTC     dword ptr [bp+di], ebx
        BTC     dword ptr [bp+di], esp
        BTC     dword ptr [bp+di], ebp
        BTC     dword ptr [bp+di], esi
        BTC     dword ptr [bp+di], edi
        
        BTC     word ptr ds:[si], ax
        BTC     word ptr ss:[si], cx
        BTC     word ptr cs:[si], dx
        BTC     word ptr es:[si], bx
        BTC     word ptr fs:[si], sp
        BTC     word ptr gs:[si], bp
        BTC     word ptr [si], si
        BTC     word ptr [si], di
        
        BTC     dword ptr [si], eax
        BTC     dword ptr [si], ecx
        BTC     dword ptr [si], edx
        BTC     dword ptr [si], ebx
        BTC     dword ptr [si], esp
        BTC     dword ptr [si], ebp
        BTC     dword ptr [si], esi
        BTC     dword ptr [si], edi
        
        BTC     word ptr [di], ax
        BTC     word ptr [di], cx
        BTC     word ptr [di], dx
        BTC     word ptr [di], bx
        BTC     word ptr [di], sp
        BTC     word ptr [di], bp
        BTC     word ptr [di], si
        BTC     word ptr [di], di
        
        BTC     dword ptr [di], eax
        BTC     dword ptr [di], ecx
        BTC     dword ptr [di], edx
        BTC     dword ptr [di], ebx
        BTC     dword ptr [di], esp
        BTC     dword ptr [di], ebp
        BTC     dword ptr [di], esi
        BTC     dword ptr [di], edi
        
        BTC     word ptr [bx], ax
        BTC     word ptr [bx], cx
        BTC     word ptr [bx], dx
        BTC     word ptr [bx], bx
        BTC     word ptr [bx], sp
        BTC     word ptr [bx], bp
        BTC     word ptr [bx], si
        BTC     word ptr [bx], di
        
        BTC     dword ptr [bx], eax
        BTC     dword ptr [bx], ecx
        BTC     dword ptr [bx], edx
        BTC     dword ptr [bx], ebx
        BTC     dword ptr [bx], esp
        BTC     dword ptr [bx], ebp
        BTC     dword ptr [bx], esi
        BTC     dword ptr [bx], edi
        
        JMP     ax
        JMP     cx
        JMP     dx
        JMP     bx
        JMP     sp
        JMP     bx
        JMP     si
        JMP     di
        
        JMP     eax
        JMP     ecx
        JMP     edx
        JMP     ebx
        JMP     esp
        JMP     ebp
        JMP     esi
        JMP     edi
        
        JMP     word ptr [bx+si]
        JMP     word ptr gs:[bx+di]
        JMP     word ptr [bp+si]
        JMP     word ptr [bp+di]
        JMP     word ptr [bx]
        JMP     word ptr gs:[si]
        JMP     word ptr [di]
        ;
        
        DAS
end start