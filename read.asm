    .model tiny
    .486
    .data
A db 12h
B dw 1234h
    .code
    org 100h   
start:
    ;exampl
        BTC     word ptr [ebp], 9
        BTC     word ptr FS:[11111130h], 15h
        BTC     word ptr FS:[11111130h], si
        BTC     [eax+eax], si 
        BTC     [esi*8+edi+11111111h], 18h
        BTC     [esi+11111111h], 18h
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
        
        BTC     ax, 0FCh
        BTC     ax, 0FCh
        BTC     ax, 0FCh
        BTC     ax, 0FCh
        BTC     ax, 0FCh
        BTC     ax, 0FCh
        BTC     ax, 0FCh
        
        BTC     cx, 0FCh
        BTC     cx, 0FCh
        BTC     cx, 0FCh
        BTC     cx, 0FCh
        BTC     cx, 0FCh
        BTC     cx, 0FCh
        BTC     cx, 0FCh
        BTC     cx, 0FCh
        
        BTC     dx, 0FCh
        BTC     dx, 0FCh
        BTC     dx, 0FCh
        BTC     dx, 0FCh
        BTC     dx, 0FCh
        BTC     dx, 0FCh
        BTC     dx, 0FCh
        BTC     dx, 0FCh
        
        BTC     bx, 0FCh
        BTC     bx, 0FCh
        BTC     bx, 0FCh
        BTC     bx, 0FCh
        BTC     bx, 0FCh
        BTC     bx, 0FCh
        BTC     bx, 0FCh
        BTC     bx, 0FCh
        
        BTC     sp, 0FCh
        BTC     sp, 0FCh
        BTC     sp, 0FCh
        BTC     sp, 0FCh
        BTC     sp, 0FCh
        BTC     sp, 0FCh
        BTC     sp, 0FCh
        BTC     sp, 0FCh
        
        BTC     bp, 0FCh
        BTC     bp, 0FCh
        BTC     bp, 0FCh
        BTC     bp, 0FCh
        BTC     bp, 0FCh
        BTC     bp, 0FCh
        BTC     bp, 0FCh
        BTC     bp, 0FCh
        
        BTC     si, 0FCh
        BTC     si, 0FCh
        BTC     si, 0FCh
        BTC     si, 0FCh
        BTC     si, 0FCh
        BTC     si, 0FCh
        BTC     si, 0FCh
        BTC     si, 0FCh
        
        BTC     di, 0FCh
        BTC     di, 0FCh
        BTC     di, 0FCh
        BTC     di, 0FCh
        BTC     di, 0FCh
        BTC     di, 0FCh
        BTC     di, 0FCh
        BTC     di, 0FCh
        
        BTC     eax, 0FCh
        BTC     eax, 0FCh
        BTC     eax, 0FCh
        BTC     eax, 0FCh
        BTC     eax, 0FCh
        BTC     eax, 0FCh
        BTC     eax, 0FCh
        BTC     eax, 0FCh
        
        BTC     ecx, 0FCh
        BTC     ecx, 0FCh
        BTC     ecx, 0FCh
        BTC     ecx, 0FCh
        BTC     ecx, 0FCh
        BTC     ecx, 0FCh
        BTC     ecx, 0FCh
        BTC     ecx, 0FCh
        
        BTC     edx, 0FCh
        BTC     edx, 0FCh
        BTC     edx, 0FCh
        BTC     edx, 0FCh
        BTC     edx, 0FCh
        BTC     edx, 0FCh
        BTC     edx, 0FCh
        BTC     edx, 0FCh
        
        BTC     ebx, 0FCh
        BTC     ebx, 0FCh
        BTC     ebx, 0FCh
        BTC     ebx, 0FCh
        BTC     ebx, 0FCh
        BTC     ebx, 0FCh
        BTC     ebx, 0FCh
        BTC     ebx, 0FCh
        
        BTC     esp, 0FCh
        BTC     esp, 0FCh
        BTC     esp, 0FCh
        BTC     esp, 0FCh
        BTC     esp, 0FCh
        BTC     esp, 0FCh
        BTC     esp, 0FCh
        BTC     esp, 0FCh
        
        BTC     ebp, 0FCh
        BTC     ebp, 0FCh
        BTC     ebp, 0FCh
        BTC     ebp, 0FCh
        BTC     ebp, 0FCh
        BTC     ebp, 0FCh
        BTC     ebp, 0FCh
        BTC     ebp, 0FCh
        
        BTC     esi, 0FCh
        BTC     esi, 0FCh
        BTC     esi, 0FCh
        BTC     esi, 0FCh
        BTC     esi, 0FCh
        BTC     esi, 0FCh
        BTC     esi, 0FCh
        BTC     esi, 0FCh
        
        BTC     edi, 0FCh
        BTC     edi, 0FCh
        BTC     edi, 0FCh
        BTC     edi, 0FCh
        BTC     edi, 0FCh
        BTC     edi, 0FCh
        BTC     edi, 0FCh
        BTC     edi, 0FCh
        
        BTC     word ptr ds:[bx+si], 15h
        BTC     word ptr ss:[bx+si], 15h
        BTC     word ptr cs:[bx+si], 15h
        BTC     word ptr es:[bx+si], 15h
        BTC     word ptr fs:[bx+si], 15h
        BTC     word ptr gs:[bx+si], 15h
        BTC     word ptr [bx+si], 15h
        BTC     word ptr [bx+si], 15h
        
        BTC     dword ptr [bx+si], 15h
        BTC     dword ptr [bx+si], 15h
        BTC     dword ptr [bx+si], 15h
        BTC     dword ptr [bx+si], 15h
        BTC     dword ptr [bx+si], 15h
        BTC     dword ptr [bx+si], 15h
        BTC     dword ptr [bx+si], 15h
        BTC     dword ptr [bx+si], 15h
        
        BTC     word ptr ds:[bx+di], 15h
        BTC     word ptr ss:[bx+di], 15h
        BTC     word ptr cs:[bx+di], 15h
        BTC     word ptr es:[bx+di], 15h
        BTC     word ptr fs:[bx+di], 15h
        BTC     word ptr gs:[bx+di], 15h
        BTC     word ptr [bx+di], 15h
        BTC     word ptr [bx+di], 15h
        
        BTC     dword ptr [bx+di], 15h
        BTC     dword ptr [bx+di], 15h
        BTC     dword ptr [bx+di], 15h
        BTC     dword ptr [bx+di], 15h
        BTC     dword ptr [bx+di], 15h
        BTC     dword ptr [bx+di], 15h
        BTC     dword ptr [bx+di], 15h
        BTC     dword ptr [bx+di], 15h
        
        BTC     word ptr ds:[bp+si], 15h
        BTC     word ptr ss:[bp+si], 15h
        BTC     word ptr cs:[bp+si], 15h
        BTC     word ptr es:[bp+si], 15h
        BTC     word ptr fs:[bp+si], 15h
        BTC     word ptr gs:[bp+si], 15h
        BTC     word ptr [bp+si], 15h
        BTC     word ptr [bp+si], 15h
        
        BTC     dword ptr [bp+si], 15h
        BTC     dword ptr [bp+si], 15h
        BTC     dword ptr [bp+si], 15h
        BTC     dword ptr [bp+si], 15h
        BTC     dword ptr [bp+si], 15h
        BTC     dword ptr [bp+si], 15h
        BTC     dword ptr [bp+si], 15h
        BTC     dword ptr [bp+si], 15h
        
        BTC     word ptr ds:[bp+di], 15h
        BTC     word ptr ss:[bp+di], 15h
        BTC     word ptr cs:[bp+di], 15h
        BTC     word ptr es:[bp+di], 15h
        BTC     word ptr fs:[bp+di], 15h
        BTC     word ptr gs:[bp+di], 15h
        BTC     word ptr [bp+di], 15h
        BTC     word ptr [bp+di], 15h
        
        BTC     dword ptr [bp+di], 15h
        BTC     dword ptr [bp+di], 15h
        BTC     dword ptr [bp+di], 15h
        BTC     dword ptr [bp+di], 15h
        BTC     dword ptr [bp+di], 15h
        BTC     dword ptr [bp+di], 15h
        BTC     dword ptr [bp+di], 15h
        BTC     dword ptr [bp+di], 15h
        
        BTC     word ptr ds:[si], 15h
        BTC     word ptr ss:[si], 15h
        BTC     word ptr cs:[si], 15h
        BTC     word ptr es:[si], 15h
        BTC     word ptr fs:[si], 15h
        BTC     word ptr gs:[si], 15h
        BTC     word ptr [si], 15h
        BTC     word ptr [si], 15h
        
        BTC     dword ptr [si], 15h
        BTC     dword ptr [si], 15h
        BTC     dword ptr [si], 15h
        BTC     dword ptr [si], 15h
        BTC     dword ptr [si], 15h
        BTC     dword ptr [si], 15h
        BTC     dword ptr [si], 15h
        BTC     dword ptr [si], 15h
        
        BTC     word ptr [di], 15h
        BTC     word ptr [di], 15h
        BTC     word ptr [di], 15h
        BTC     word ptr [di], 15h
        BTC     word ptr [di], 15h
        BTC     word ptr [di], 15h
        BTC     word ptr [di], 15h
        BTC     word ptr [di], 15h
        
        BTC     dword ptr [di], 15h
        BTC     dword ptr [di], 15h
        BTC     dword ptr [di], 15h
        BTC     dword ptr [di], 15h
        BTC     dword ptr [di], 15h
        BTC     dword ptr [di], 15h
        BTC     dword ptr [di], 15h
        BTC     dword ptr [di], 15h
        
        BTC     word ptr [bx], 15h
        BTC     word ptr [bx], 15h
        BTC     word ptr [bx], 15h
        BTC     word ptr [bx], 15h
        BTC     word ptr [bx], 15h
        BTC     word ptr [bx], 15h
        BTC     word ptr [bx], 15h
        BTC     word ptr [bx], 15h
        
        BTC     dword ptr [bx], 15h
        BTC     dword ptr [bx], 15h
        BTC     dword ptr [bx], 15h
        BTC     dword ptr [bx], 15h
        BTC     dword ptr [bx], 15h
        BTC     dword ptr [bx], 15h
        BTC     dword ptr [bx], 15h
        BTC     dword ptr [bx], 0Ah
        
        BTC     word ptr ds:[bx+si+8h], ax
        BTC     word ptr ss:[bx+si+8h], cx
        BTC     word ptr cs:[bx+si+8h], dx
        BTC     word ptr es:[bx+si+8h], bx
        BTC     word ptr fs:[bx+si+8h], sp
        BTC     word ptr gs:[bx+si+8h], bp
        BTC     word ptr [bx+si+8h], si
        BTC     word ptr [bx+si+8h], di
        
        BTC     dword ptr [bx+si+8h], eax
        BTC     dword ptr [bx+si+8h], ecx
        BTC     dword ptr [bx+si+8h], edx
        BTC     dword ptr [bx+si+8h], ebx
        BTC     dword ptr [bx+si+8h], esp
        BTC     dword ptr [bx+si+8h], ebp
        BTC     dword ptr [bx+si+8h], esi
        BTC     dword ptr [bx+si+8h], edi
        
        BTC     word ptr ds:[bx+di+8h], ax
        BTC     word ptr ss:[bx+di+8h], cx
        BTC     word ptr cs:[bx+di+8h], dx
        BTC     word ptr es:[bx+di+8h], bx
        BTC     word ptr fs:[bx+di+8h], sp
        BTC     word ptr gs:[bx+di+8h], bp
        BTC     word ptr [bx+di+8h], si
        BTC     word ptr [bx+di+8h], di
        
        BTC     dword ptr [bx+di+8h], eax
        BTC     dword ptr [bx+di+8h], ecx
        BTC     dword ptr [bx+di+8h], edx
        BTC     dword ptr [bx+di+8h], ebx
        BTC     dword ptr [bx+di+8h], esp
        BTC     dword ptr [bx+di+8h], ebp
        BTC     dword ptr [bx+di+8h], esi
        BTC     dword ptr [bx+di+8h], edi
        
        BTC     word ptr ds:[bp+si+8h], ax
        BTC     word ptr ss:[bp+si+8h], cx
        BTC     word ptr cs:[bp+si+8h], dx
        BTC     word ptr es:[bp+si+8h], bx
        BTC     word ptr fs:[bp+si+8h], sp
        BTC     word ptr gs:[bp+si+8h], bp
        BTC     word ptr [bp+si+8h], si
        BTC     word ptr [bp+si+8h], di
        
        BTC     dword ptr [bp+si+8h], eax
        BTC     dword ptr [bp+si+8h], ecx
        BTC     dword ptr [bp+si+8h], edx
        BTC     dword ptr [bp+si+8h], ebx
        BTC     dword ptr [bp+si+8h], esp
        BTC     dword ptr [bp+si+8h], ebp
        BTC     dword ptr [bp+si+8h], esi
        BTC     dword ptr [bp+si+8h], edi
        
        BTC     word ptr ds:[bp+di+8h], ax
        BTC     word ptr ss:[bp+di+8h], cx
        BTC     word ptr cs:[bp+di+8h], dx
        BTC     word ptr es:[bp+di+8h], bx
        BTC     word ptr fs:[bp+di+8h], sp
        BTC     word ptr gs:[bp+di+8h], bp
        BTC     word ptr [bp+di+8h], si
        BTC     word ptr [bp+di+8h], di
        
        BTC     dword ptr [bp+di+8h], eax
        BTC     dword ptr [bp+di+8h], ecx
        BTC     dword ptr [bp+di+8h], edx
        BTC     dword ptr [bp+di+8h], ebx
        BTC     dword ptr [bp+di+8h], esp
        BTC     dword ptr [bp+di+8h], ebp
        BTC     dword ptr [bp+di+8h], esi
        BTC     dword ptr [bp+di+8h], edi
        
        BTC     word ptr ds:[si+8h], ax
        BTC     word ptr ss:[si+8h], cx
        BTC     word ptr cs:[si+8h], dx
        BTC     word ptr es:[si+8h], bx
        BTC     word ptr fs:[si+8h], sp
        BTC     word ptr gs:[si+8h], bp
        BTC     word ptr [si+8h], si
        BTC     word ptr [si+8h], di
        
        BTC     dword ptr [si+8h], eax
        BTC     dword ptr [si+8h], ecx
        BTC     dword ptr [si+8h], edx
        BTC     dword ptr [si+8h], ebx
        BTC     dword ptr [si+8h], esp
        BTC     dword ptr [si+8h], ebp
        BTC     dword ptr [si+8h], esi
        BTC     dword ptr [si+8h], edi
        
        BTC     word ptr [di+8h], ax
        BTC     word ptr [di+8h], cx
        BTC     word ptr [di+8h], dx
        BTC     word ptr [di+8h], bx
        BTC     word ptr [di+8h], sp
        BTC     word ptr [di+8h], bp
        BTC     word ptr [di+8h], si
        BTC     word ptr [di+8h], di
        
        BTC     dword ptr [di+8h], eax
        BTC     dword ptr [di+8h], ecx
        BTC     dword ptr [di+8h], edx
        BTC     dword ptr [di+8h], ebx
        BTC     dword ptr [di+8h], esp
        BTC     dword ptr [di+8h], ebp
        BTC     dword ptr [di+8h], esi
        BTC     dword ptr [di+8h], edi
        
        BTC     word ptr [bx+8h], ax
        BTC     word ptr [bx+8h], cx
        BTC     word ptr [bx+8h], dx
        BTC     word ptr [bx+8h], bx
        BTC     word ptr [bx+8h], sp
        BTC     word ptr [bx+8h], bp
        BTC     word ptr [bx+8h], si
        BTC     word ptr [bx+8h], di
        
        BTC     dword ptr [bx+8h], eax
        BTC     dword ptr [bx+8h], ecx
        BTC     dword ptr [bx+8h], edx
        BTC     dword ptr [bx+8h], ebx
        BTC     dword ptr [bx+8h], esp
        BTC     dword ptr [bx+8h], ebp
        BTC     dword ptr [bx+8h], esi
        BTC     dword ptr [bx+8h], edi

        BTC     word ptr ds:[bx+si+1060h], ax
        BTC     word ptr ss:[bx+si+1060h], cx
        BTC     word ptr cs:[bx+si+1060h], dx
        BTC     word ptr es:[bx+si+1060h], bx
        BTC     word ptr fs:[bx+si+1060h], sp
        BTC     word ptr gs:[bx+si+1060h], bp
        BTC     word ptr [bx+si+1060h], si
        BTC     word ptr [bx+si+1060h], di
        
        BTC     dword ptr [bx+si+1060h], eax
        BTC     dword ptr [bx+si+1060h], ecx
        BTC     dword ptr [bx+si+1060h], edx
        BTC     dword ptr [bx+si+1060h], ebx
        BTC     dword ptr [bx+si+1060h], esp
        BTC     dword ptr [bx+si+1060h], ebp
        BTC     dword ptr [bx+si+1060h], esi
        BTC     dword ptr [bx+si+1060h], edi
        
        BTC     word ptr ds:[bx+di+1060h], ax
        BTC     word ptr ss:[bx+di+1060h], cx
        BTC     word ptr cs:[bx+di+1060h], dx
        BTC     word ptr es:[bx+di+1060h], bx
        BTC     word ptr fs:[bx+di+1060h], sp
        BTC     word ptr gs:[bx+di+1060h], bp
        BTC     word ptr [bx+di+1060h], si
        BTC     word ptr [bx+di+1060h], di
        
        BTC     dword ptr [bx+di+1060h], eax
        BTC     dword ptr [bx+di+1060h], ecx
        BTC     dword ptr [bx+di+1060h], edx
        BTC     dword ptr [bx+di+1060h], ebx
        BTC     dword ptr [bx+di+1060h], esp
        BTC     dword ptr [bx+di+1060h], ebp
        BTC     dword ptr [bx+di+1060h], esi
        BTC     dword ptr [bx+di+1060h], edi
        
        BTC     word ptr ds:[bp+si+1060h], ax
        BTC     word ptr ss:[bp+si+1060h], cx
        BTC     word ptr cs:[bp+si+1060h], dx
        BTC     word ptr es:[bp+si+1060h], bx
        BTC     word ptr fs:[bp+si+1060h], sp
        BTC     word ptr gs:[bp+si+1060h], bp
        BTC     word ptr [bp+si+1060h], si
        BTC     word ptr [bp+si+1060h], di
        
        BTC     dword ptr [bp+si+1060h], eax
        BTC     dword ptr [bp+si+1060h], ecx
        BTC     dword ptr [bp+si+1060h], edx
        BTC     dword ptr [bp+si+1060h], ebx
        BTC     dword ptr [bp+si+1060h], esp
        BTC     dword ptr [bp+si+1060h], ebp
        BTC     dword ptr [bp+si+1060h], esi
        BTC     dword ptr [bp+si+1060h], edi
        
        BTC     word ptr ds:[bp+di+1060h], ax
        BTC     word ptr ss:[bp+di+1060h], cx
        BTC     word ptr cs:[bp+di+1060h], dx
        BTC     word ptr es:[bp+di+1060h], bx
        BTC     word ptr fs:[bp+di+1060h], sp
        BTC     word ptr gs:[bp+di+1060h], bp
        BTC     word ptr [bp+di+1060h], si
        BTC     word ptr [bp+di+1060h], di
        
        BTC     dword ptr [bp+di+1060h], eax
        BTC     dword ptr [bp+di+1060h], ecx
        BTC     dword ptr [bp+di+1060h], edx
        BTC     dword ptr [bp+di+1060h], ebx
        BTC     dword ptr [bp+di+1060h], esp
        BTC     dword ptr [bp+di+1060h], ebp
        BTC     dword ptr [bp+di+1060h], esi
        BTC     dword ptr [bp+di+1060h], edi
        
        BTC     word ptr ds:[si+1060h], ax
        BTC     word ptr ss:[si+1060h], cx
        BTC     word ptr cs:[si+1060h], dx
        BTC     word ptr es:[si+1060h], bx
        BTC     word ptr fs:[si+1060h], sp
        BTC     word ptr gs:[si+1060h], bp
        BTC     word ptr [si+1060h], si
        BTC     word ptr [si+1060h], di
        
        BTC     dword ptr [si+1060h], eax
        BTC     dword ptr [si+1060h], ecx
        BTC     dword ptr [si+1060h], edx
        BTC     dword ptr [si+1060h], ebx
        BTC     dword ptr [si+1060h], esp
        BTC     dword ptr [si+1060h], ebp
        BTC     dword ptr [si+1060h], esi
        BTC     dword ptr [si+1060h], edi
        
        BTC     word ptr [di+1060h], ax
        BTC     word ptr [di+1060h], cx
        BTC     word ptr [di+1060h], dx
        BTC     word ptr [di+1060h], bx
        BTC     word ptr [di+1060h], sp
        BTC     word ptr [di+1060h], bp
        BTC     word ptr [di+1060h], si
        BTC     word ptr [di+1060h], di
        
        BTC     dword ptr [di+1060h], eax
        BTC     dword ptr [di+1060h], ecx
        BTC     dword ptr [di+1060h], edx
        BTC     dword ptr [di+1060h], ebx
        BTC     dword ptr [di+1060h], esp
        BTC     dword ptr [di+1060h], ebp
        BTC     dword ptr [di+1060h], esi
        BTC     dword ptr [di+1060h], edi
        
        BTC     word ptr [bx+1060h], ax
        BTC     word ptr [bx+1060h], cx
        BTC     word ptr [bx+1060h], dx
        BTC     word ptr [bx+1060h], bx
        BTC     word ptr [bx+1060h], sp
        BTC     word ptr [bx+1060h], bp
        BTC     word ptr [bx+1060h], si
        BTC     word ptr [bx+1060h], di
        
        BTC     dword ptr [bx+1060h], eax
        BTC     dword ptr [bx+1060h], ecx
        BTC     dword ptr [bx+1060h], edx
        BTC     dword ptr [bx+1060h], ebx
        BTC     dword ptr [bx+1060h], esp
        BTC     dword ptr [bx+1060h], ebp
        BTC     dword ptr [bx+1060h], esi
        BTC     dword ptr [bx+1060h], edi
        
        BTC     word ptr ds:[0016h], ax
        BTC     word ptr cs:[0016h], cx
        BTC     word ptr ss:[0016h], dx
        BTC     word ptr fs:[0016h], bx
        BTC     word ptr gs:[0016h], sp
        BTC     word ptr ds:[0016h], bp
        BTC     word ptr cs:[0016h], si
        BTC     word ptr ss:[0016h], di
        
        BTC     dword ptr fs:[0016h], eax
        BTC     dword ptr gs:[0016h], ecx
        BTC     dword ptr fs:[0016h], edx
        BTC     dword ptr gs:[0016h], ebx
        BTC     dword ptr fs:[0016h], esp
        BTC     dword ptr gs:[0016h], ebp
        BTC     dword ptr fs:[0016h], esi
        BTC     dword ptr gs:[0016h], edi
        
        BTC     word ptr [eax], 15h
        BTC     word ptr [eax], cx
        BTC     word ptr [eax], dx
        BTC     word ptr [eax], bx
        BTC     word ptr [eax], sp
        BTC     word ptr [eax], bp
        BTC     word ptr [eax], si
        BTC     word ptr [eax], di
       
        BTC     dword ptr [eax], eax
        BTC     dword ptr [eax], ecx
        BTC     dword ptr [eax], edx
        BTC     dword ptr [eax], ebx
        BTC     dword ptr [eax], esp
        BTC     dword ptr [eax], ebp
        BTC     dword ptr [eax], esi
        BTC     dword ptr [eax], edi 
       
        BTC     word ptr [ecx], ax
        BTC     word ptr [ecx], cx
        BTC     word ptr [ecx], dx
        BTC     word ptr [ecx], bx
        BTC     word ptr [ecx], sp
        BTC     word ptr [ecx], bp
        BTC     word ptr [ecx], si
        BTC     word ptr [ecx], di
       
        BTC     dword ptr [ecx], eax
        BTC     dword ptr [ecx], ecx
        BTC     dword ptr [ecx], edx
        BTC     dword ptr [ecx], ebx
        BTC     dword ptr [ecx], esp
        BTC     dword ptr [ecx], ebp
        BTC     dword ptr [ecx], esi
        BTC     dword ptr [ecx], edi
        
        BTC     word ptr [edx], ax
        BTC     word ptr [edx], cx
        BTC     word ptr [edx], dx
        BTC     word ptr [edx], bx
        BTC     word ptr [edx], sp
        BTC     word ptr [edx], bp
        BTC     word ptr [edx], si
        BTC     word ptr [edx], di
       
        BTC     dword ptr [edx], eax
        BTC     dword ptr [edx], ecx
        BTC     dword ptr [edx], edx
        BTC     dword ptr [edx], ebx
        BTC     dword ptr [edx], esp
        BTC     dword ptr [edx], ebp
        BTC     dword ptr [edx], esi
        BTC     dword ptr [edx], edi
        
        BTC     word ptr [ebx], ax
        BTC     word ptr [ebx], cx
        BTC     word ptr [ebx], dx
        BTC     word ptr [ebx], bx
        BTC     word ptr [ebx], sp
        BTC     word ptr [ebx], bp
        BTC     word ptr [ebx], si
        BTC     word ptr [ebx], di
       
        BTC     dword ptr [ebx], eax
        BTC     dword ptr [ebx], ecx
        BTC     dword ptr [ebx], edx
        BTC     dword ptr [ebx], ebx
        BTC     dword ptr [ebx], esp
        BTC     dword ptr [ebx], ebp
        BTC     dword ptr [ebx], esi
        BTC     dword ptr [ebx], edi
        

        BTC     word ptr [ebp], cx
        BTC     word ptr [ebp], dx
        BTC     word ptr [ebp], bx
        BTC     word ptr [ebp], sp
        BTC     word ptr [ebp], bp
        BTC     word ptr [ebp], si
        BTC     word ptr [ebp], di
        
        BTC     dword ptr [ebp], eax
        BTC     dword ptr [ebp], ecx
        BTC     dword ptr [ebp], edx
        BTC     dword ptr [ebp], ebx
        BTC     dword ptr [ebp], esp
        BTC     dword ptr [ebp], ebp
        BTC     dword ptr [ebp], esi
        BTC     dword ptr [ebp], edi
        
        BTC     word ptr [esi], ax
        BTC     word ptr [esi], cx
        BTC     word ptr [esi], dx
        BTC     word ptr [esi], bx
        BTC     word ptr [esi], sp
        BTC     word ptr [esi], bp
        BTC     word ptr [esi], si
        BTC     word ptr [esi], di
        
        BTC     dword ptr [esi], eax
        BTC     dword ptr [esi], ecx
        BTC     dword ptr [esi], edx
        BTC     dword ptr [esi], ebx
        BTC     dword ptr [esi], esp
        BTC     dword ptr [esi], ebp
        BTC     dword ptr [esi], esi
        BTC     dword ptr [esi], edi
        
        BTC     word ptr [edi], ax
        BTC     word ptr [edi], cx
        BTC     word ptr [edi], dx
        BTC     word ptr [edi], bx
        BTC     word ptr [edi], sp
        BTC     word ptr [edi], bp
        BTC     word ptr [edi], si
        BTC     word ptr [edi], di
        
        BTC     dword ptr [edi], eax
        BTC     dword ptr [edi], ecx
        BTC     dword ptr [edi], edx
        BTC     dword ptr [edi], ebx
        BTC     dword ptr [edi], esp
        BTC     dword ptr [edi], ebp
        BTC     dword ptr [edi], esi
        BTC     dword ptr [edi], edi

        BTC     word ptr [eax+eax], ax
        BTC     word ptr [eax+eax], cx
        BTC     word ptr [eax+eax], dx
        BTC     word ptr [eax+eax], bx
        BTC     word ptr [eax+eax], sp
        BTC     word ptr [eax+eax], bp
        BTC     word ptr [eax+eax], si
        BTC     word ptr [eax+eax], di
        
        BTC     dword ptr [eax+eax], 15h
        BTC     dword ptr [eax+eax], ecx
        BTC     dword ptr [eax+eax], edx
        BTC     dword ptr [eax+eax], ebx
        BTC     dword ptr [eax+eax], esp
        BTC     dword ptr [eax+eax], ebp
        BTC     dword ptr [eax+eax], esi
        BTC     dword ptr [eax+eax], edi
        
        BTC     word ptr [eax*2+eax], ax
        BTC     word ptr [eax*2+eax], cx
        BTC     word ptr [eax*2+eax], dx
        BTC     word ptr [eax*2+eax], bx
        BTC     word ptr [eax*2+eax], sp
        BTC     word ptr [eax*2+eax], bp
        BTC     word ptr [eax*2+eax], si
        BTC     word ptr [eax*2+eax], di
        
        BTC     dword ptr [eax*2+eax], eax
        BTC     dword ptr [eax*2+eax], ecx
        BTC     dword ptr [eax*2+eax], edx
        BTC     dword ptr [eax*2+eax], ebx
        BTC     dword ptr [eax*2+eax], esp
        BTC     dword ptr [eax*2+eax], ebp
        BTC     dword ptr [eax*2+eax], esi
        BTC     dword ptr [eax*2+eax], edi
        
        BTC     word ptr [eax*4+eax], ax
        BTC     word ptr [eax*4+eax], cx
        BTC     word ptr [eax*4+eax], dx
        BTC     word ptr [eax*4+eax], bx
        BTC     word ptr [eax*4+eax], sp
        BTC     word ptr [eax*4+eax], bp
        BTC     word ptr [eax*4+eax], si
        BTC     word ptr [eax*4+eax], di
        
        BTC     dword ptr [eax*4+eax], eax
        BTC     dword ptr [eax*4+eax], ecx
        BTC     dword ptr [eax*4+eax], edx
        BTC     dword ptr [eax*4+eax], ebx
        BTC     dword ptr [eax*4+eax], esp
        BTC     dword ptr [eax*4+eax], ebp
        BTC     dword ptr [eax*4+eax], esi
        BTC     dword ptr [eax*4+eax], edi
        
        BTC     word ptr [eax*8+eax], ax
        BTC     word ptr [eax*8+eax], cx
        BTC     word ptr [eax*8+eax], dx
        BTC     word ptr [eax*8+eax], bx
        BTC     word ptr [eax*8+eax], sp
        BTC     word ptr [eax*8+eax], bp
        BTC     word ptr [eax*8+eax], si
        BTC     word ptr [eax*8+eax], di
        
        BTC     dword ptr [eax*8+eax], eax
        BTC     dword ptr [eax*8+eax], ecx
        BTC     dword ptr [eax*8+eax], edx
        BTC     dword ptr [eax*8+eax], ebx
        BTC     dword ptr [eax*8+eax], esp
        BTC     dword ptr [eax*8+eax], ebp
        BTC     dword ptr [eax*8+eax], esi
        BTC     dword ptr [eax*8+eax], edi
        
        BTC     word ptr [ecx+eax], ax
        BTC     word ptr [ecx+eax], cx
        BTC     word ptr [ecx+eax], dx
        BTC     word ptr [ecx+eax], bx
        BTC     word ptr [ecx+eax], sp
        BTC     word ptr [ecx+eax], bp
        BTC     word ptr [ecx+eax], si
        BTC     word ptr [ecx+eax], di
        
        BTC     dword ptr [ecx+eax], eax
        BTC     dword ptr [ecx+eax], ecx
        BTC     dword ptr [ecx+eax], edx
        BTC     dword ptr [ecx+eax], ebx
        BTC     dword ptr [ecx+eax], esp
        BTC     dword ptr [ecx+eax], ebp
        BTC     dword ptr [ecx+eax], esi
        BTC     dword ptr [ecx+eax], edi
        
        BTC     word ptr [ecx*2+eax], ax
        BTC     word ptr [ecx*2+eax], cx
        BTC     word ptr [ecx*2+eax], dx
        BTC     word ptr [ecx*2+eax], bx
        BTC     word ptr [ecx*2+eax], sp
        BTC     word ptr [ecx*2+eax], bp
        BTC     word ptr [ecx*2+eax], si
        BTC     word ptr [ecx*2+eax], di
        
        BTC     dword ptr [ecx*2+eax], eax
        BTC     dword ptr [ecx*2+eax], ecx
        BTC     dword ptr [ecx*2+eax], edx
        BTC     dword ptr [ecx*2+eax], ebx
        BTC     dword ptr [ecx*2+eax], esp
        BTC     dword ptr [ecx*2+eax], ebp
        BTC     dword ptr [ecx*2+eax], esi
        BTC     dword ptr [ecx*2+eax], edi
        
        BTC     word ptr [ecx*4+eax], ax
        BTC     word ptr [ecx*4+eax], cx
        BTC     word ptr [ecx*4+eax], dx
        BTC     word ptr [ecx*4+eax], bx
        BTC     word ptr [ecx*4+eax], sp
        BTC     word ptr [ecx*4+eax], bp
        BTC     word ptr [ecx*4+eax], si
        BTC     word ptr [ecx*4+eax], di
        
        BTC     dword ptr [ecx*4+eax], eax
        BTC     dword ptr [ecx*4+eax], ecx
        BTC     dword ptr [ecx*4+eax], edx
        BTC     dword ptr [ecx*4+eax], ebx
        BTC     dword ptr [ecx*4+eax], esp
        BTC     dword ptr [ecx*4+eax], ebp
        BTC     dword ptr [ecx*4+eax], esi
        BTC     dword ptr [ecx*4+eax], edi
        
        BTC     word ptr [ecx*8+eax], ax
        BTC     word ptr [ecx*8+eax], cx
        BTC     word ptr [ecx*8+eax], dx
        BTC     word ptr [ecx*8+eax], bx
        BTC     word ptr [ecx*8+eax], sp
        BTC     word ptr [ecx*8+eax], bp
        BTC     word ptr [ecx*8+eax], si
        BTC     word ptr [ecx*8+eax], di
        
        BTC     dword ptr [ecx*8+eax], eax
        BTC     dword ptr [ecx*8+eax], ecx
        BTC     dword ptr [ecx*8+eax], edx
        BTC     dword ptr [ecx*8+eax], ebx
        BTC     dword ptr [ecx*8+eax], esp
        BTC     dword ptr [ecx*8+eax], ebp
        BTC     dword ptr [ecx*8+eax], esi
        BTC     dword ptr [ecx*8+eax], edi
        
        BTC     word ptr [edx+eax], ax
        BTC     word ptr [edx+eax], cx
        BTC     word ptr [edx+eax], dx
        BTC     word ptr [edx+eax], bx
        BTC     word ptr [edx+eax], sp
        BTC     word ptr [edx+eax], bp
        BTC     word ptr [edx+eax], si
        BTC     word ptr [edx+eax], di
        
        BTC     dword ptr [edx+eax], eax
        BTC     dword ptr [edx+eax], ecx
        BTC     dword ptr [edx+eax], edx
        BTC     dword ptr [edx+eax], ebx
        BTC     dword ptr [edx+eax], esp
        BTC     dword ptr [edx+eax], ebp
        BTC     dword ptr [edx+eax], esi
        BTC     dword ptr [edx+eax], edi
        
        BTC     word ptr [edx*2+eax], ax
        BTC     word ptr [edx*2+eax], cx
        BTC     word ptr [edx*2+eax], dx
        BTC     word ptr [edx*2+eax], bx
        BTC     word ptr [edx*2+eax], sp
        BTC     word ptr [edx*2+eax], bp
        BTC     word ptr [edx*2+eax], si
        BTC     word ptr [edx*2+eax], di
        
        BTC     dword ptr [edx*2+eax], eax
        BTC     dword ptr [edx*2+eax], ecx
        BTC     dword ptr [edx*2+eax], edx
        BTC     dword ptr [edx*2+eax], ebx
        BTC     dword ptr [edx*2+eax], esp
        BTC     dword ptr [edx*2+eax], ebp
        BTC     dword ptr [edx*2+eax], esi
        BTC     dword ptr [edx*2+eax], edi
        
        BTC     word ptr [edx*4+eax], ax
        BTC     word ptr [edx*4+eax], cx
        BTC     word ptr [edx*4+eax], dx
        BTC     word ptr [edx*4+eax], bx
        BTC     word ptr [edx*4+eax], sp
        BTC     word ptr [edx*4+eax], bp
        BTC     word ptr [edx*4+eax], si
        BTC     word ptr [edx*4+eax], di
        
        BTC     dword ptr [edx*4+eax], eax
        BTC     dword ptr [edx*4+eax], ecx
        BTC     dword ptr [edx*4+eax], edx
        BTC     dword ptr [edx*4+eax], ebx
        BTC     dword ptr [edx*4+eax], esp
        BTC     dword ptr [edx*4+eax], ebp
        BTC     dword ptr [edx*4+eax], esi
        BTC     dword ptr [edx*4+eax], edi
        
        BTC     word ptr [edx*8+eax], ax
        BTC     word ptr [edx*8+eax], cx
        BTC     word ptr [edx*8+eax], dx
        BTC     word ptr [edx*8+eax], bx
        BTC     word ptr [edx*8+eax], sp
        BTC     word ptr [edx*8+eax], bp
        BTC     word ptr [edx*8+eax], si
        BTC     word ptr [edx*8+eax], di
        
        BTC     dword ptr [edx*8+eax], eax
        BTC     dword ptr [edx*8+eax], ecx
        BTC     dword ptr [edx*8+eax], edx
        BTC     dword ptr [edx*8+eax], ebx
        BTC     dword ptr [edx*8+eax], esp
        BTC     dword ptr [edx*8+eax], ebp
        BTC     dword ptr [edx*8+eax], esi
        BTC     dword ptr [edx*8+eax], edi
        
        BTC     word ptr [ebx+eax], ax
        BTC     word ptr [ebx+eax], cx
        BTC     word ptr [ebx+eax], dx
        BTC     word ptr [ebx+eax], bx
        BTC     word ptr [ebx+eax], sp
        BTC     word ptr [ebx+eax], bp
        BTC     word ptr [ebx+eax], si
        BTC     word ptr [ebx+eax], di
        
        BTC     dword ptr [ebx+eax], eax
        BTC     dword ptr [ebx+eax], ecx
        BTC     dword ptr [ebx+eax], edx
        BTC     dword ptr [ebx+eax], ebx
        BTC     dword ptr [ebx+eax], esp
        BTC     dword ptr [ebx+eax], ebp
        BTC     dword ptr [ebx+eax], esi
        BTC     dword ptr [ebx+eax], edi
        
        BTC     word ptr [ebx*2+eax], ax
        BTC     word ptr [ebx*2+eax], cx
        BTC     word ptr [ebx*2+eax], dx
        BTC     word ptr [ebx*2+eax], bx
        BTC     word ptr [ebx*2+eax], sp
        BTC     word ptr [ebx*2+eax], bp
        BTC     word ptr [ebx*2+eax], si
        BTC     word ptr [ebx*2+eax], di
        
        BTC     dword ptr [ebx*2+eax], eax
        BTC     dword ptr [ebx*2+eax], ecx
        BTC     dword ptr [ebx*2+eax], edx
        BTC     dword ptr [ebx*2+eax], ebx
        BTC     dword ptr [ebx*2+eax], esp
        BTC     dword ptr [ebx*2+eax], ebp
        BTC     dword ptr [ebx*2+eax], esi
        BTC     dword ptr [ebx*2+eax], edi
        
        BTC     word ptr [ebx*4+eax], ax
        BTC     word ptr [ebx*4+eax], cx
        BTC     word ptr [ebx*4+eax], dx
        BTC     word ptr [ebx*4+eax], bx
        BTC     word ptr [ebx*4+eax], sp
        BTC     word ptr [ebx*4+eax], bp
        BTC     word ptr [ebx*4+eax], si
        BTC     word ptr [ebx*4+eax], di
        
        BTC     dword ptr [ebx*4+eax], eax
        BTC     dword ptr [ebx*4+eax], ecx
        BTC     dword ptr [ebx*4+eax], edx
        BTC     dword ptr [ebx*4+eax], ebx
        BTC     dword ptr [ebx*4+eax], esp
        BTC     dword ptr [ebx*4+eax], ebp
        BTC     dword ptr [ebx*4+eax], esi
        BTC     dword ptr [ebx*4+eax], edi
        
        BTC     word ptr [ebx*8+eax], ax
        BTC     word ptr [ebx*8+eax], cx
        BTC     word ptr [ebx*8+eax], dx
        BTC     word ptr [ebx*8+eax], bx
        BTC     word ptr [ebx*8+eax], sp
        BTC     word ptr [ebx*8+eax], bp
        BTC     word ptr [ebx*8+eax], si
        BTC     word ptr [ebx*8+eax], di
        
        BTC     dword ptr [ebx*8+eax], eax
        BTC     dword ptr [ebx*8+eax], ecx
        BTC     dword ptr [ebx*8+eax], edx
        BTC     dword ptr [ebx*8+eax], ebx
        BTC     dword ptr [ebx*8+eax], esp
        BTC     dword ptr [ebx*8+eax], ebp
        BTC     dword ptr [ebx*8+eax], esi
        BTC     dword ptr [ebx*8+eax], edi
        
        BTC     word ptr [ebp+eax], ax
        BTC     word ptr [ebp+eax], cx
        BTC     word ptr [ebp+eax], dx
        BTC     word ptr [ebp+eax], bx
        BTC     word ptr [ebp+eax], sp
        BTC     word ptr [ebp+eax], bp
        BTC     word ptr [ebp+eax], si
        BTC     word ptr [ebp+eax], di
        
        BTC     dword ptr [ebp+eax], eax
        BTC     dword ptr [ebp+eax], ecx
        BTC     dword ptr [ebp+eax], edx
        BTC     dword ptr [ebp+eax], ebx
        BTC     dword ptr [ebp+eax], esp
        BTC     dword ptr [ebp+eax], ebp
        BTC     dword ptr [ebp+eax], esi
        BTC     dword ptr [ebp+eax], edi
        
        BTC     word ptr [ebp*2+eax], ax
        BTC     word ptr [ebp*2+eax], cx
        BTC     word ptr [ebp*2+eax], dx
        BTC     word ptr [ebp*2+eax], bx
        BTC     word ptr [ebp*2+eax], sp
        BTC     word ptr [ebp*2+eax], bp
        BTC     word ptr [ebp*2+eax], si
        BTC     word ptr [ebp*2+eax], di
        
        BTC     dword ptr [ebp*2+eax], eax
        BTC     dword ptr [ebp*2+eax], ecx
        BTC     dword ptr [ebp*2+eax], edx
        BTC     dword ptr [ebp*2+eax], ebx
        BTC     dword ptr [ebp*2+eax], esp
        BTC     dword ptr [ebp*2+eax], ebp
        BTC     dword ptr [ebp*2+eax], esi
        BTC     dword ptr [ebp*2+eax], edi
        
        BTC     word ptr [ebp*4+eax], ax
        BTC     word ptr [ebp*4+eax], cx
        BTC     word ptr [ebp*4+eax], dx
        BTC     word ptr [ebp*4+eax], bx
        BTC     word ptr [ebp*4+eax], sp
        BTC     word ptr [ebp*4+eax], bp
        BTC     word ptr [ebp*4+eax], si
        BTC     word ptr [ebp*4+eax], di
        
        BTC     dword ptr [ebp*4+eax], eax
        BTC     dword ptr [ebp*4+eax], ecx
        BTC     dword ptr [ebp*4+eax], edx
        BTC     dword ptr [ebp*4+eax], ebx
        BTC     dword ptr [ebp*4+eax], esp
        BTC     dword ptr [ebp*4+eax], ebp
        BTC     dword ptr [ebp*4+eax], esi
        BTC     dword ptr [ebp*4+eax], edi
        
        BTC     word ptr [ebp*8+eax], ax
        BTC     word ptr [ebp*8+eax], cx
        BTC     word ptr [ebp*8+eax], dx
        BTC     word ptr [ebp*8+eax], bx
        BTC     word ptr [ebp*8+eax], sp
        BTC     word ptr [ebp*8+eax], bp
        BTC     word ptr [ebp*8+eax], si
        BTC     word ptr [ebp*8+eax], di
        
        BTC     dword ptr [ebp*8+eax], eax
        BTC     dword ptr [ebp*8+eax], ecx
        BTC     dword ptr [ebp*8+eax], edx
        BTC     dword ptr [ebp*8+eax], ebx
        BTC     dword ptr [ebp*8+eax], esp
        BTC     dword ptr [ebp*8+eax], ebp
        BTC     dword ptr [ebp*8+eax], esi
        BTC     dword ptr [ebp*8+eax], edi
        
        BTC     word ptr [esi+eax], ax
        BTC     word ptr [esi+eax], cx
        BTC     word ptr [esi+eax], dx
        BTC     word ptr [esi+eax], bx
        BTC     word ptr [esi+eax], sp
        BTC     word ptr [esi+eax], bp
        BTC     word ptr [esi+eax], si
        BTC     word ptr [esi+eax], di
        
        BTC     dword ptr [esi+eax], eax
        BTC     dword ptr [esi+eax], ecx
        BTC     dword ptr [esi+eax], edx
        BTC     dword ptr [esi+eax], ebx
        BTC     dword ptr [esi+eax], esp
        BTC     dword ptr [esi+eax], ebp
        BTC     dword ptr [esi+eax], esi
        BTC     dword ptr [esi+eax], edi
        
        BTC     word ptr [esi*2+eax], ax
        BTC     word ptr [esi*2+eax], cx
        BTC     word ptr [esi*2+eax], dx
        BTC     word ptr [esi*2+eax], bx
        BTC     word ptr [esi*2+eax], sp
        BTC     word ptr [esi*2+eax], bp
        BTC     word ptr [esi*2+eax], si
        BTC     word ptr [esi*2+eax], di
        
        BTC     dword ptr [esi*2+eax], eax
        BTC     dword ptr [esi*2+eax], ecx
        BTC     dword ptr [esi*2+eax], edx
        BTC     dword ptr [esi*2+eax], ebx
        BTC     dword ptr [esi*2+eax], esp
        BTC     dword ptr [esi*2+eax], ebp
        BTC     dword ptr [esi*2+eax], esi
        BTC     dword ptr [esi*2+eax], edi
        
        BTC     word ptr [esi*4+eax], ax
        BTC     word ptr [esi*4+eax], cx
        BTC     word ptr [esi*4+eax], dx
        BTC     word ptr [esi*4+eax], bx
        BTC     word ptr [esi*4+eax], sp
        BTC     word ptr [esi*4+eax], bp
        BTC     word ptr [esi*4+eax], si
        BTC     word ptr [esi*4+eax], di
        
        BTC     dword ptr [esi*4+eax], eax
        BTC     dword ptr [esi*4+eax], ecx
        BTC     dword ptr [esi*4+eax], edx
        BTC     dword ptr [esi*4+eax], ebx
        BTC     dword ptr [esi*4+eax], esp
        BTC     dword ptr [esi*4+eax], ebp
        BTC     dword ptr [esi*4+eax], esi
        BTC     dword ptr [esi*4+eax], edi
        
        BTC     word ptr [esi*8+eax], ax
        BTC     word ptr [esi*8+eax], cx
        BTC     word ptr [esi*8+eax], dx
        BTC     word ptr [esi*8+eax], bx
        BTC     word ptr [esi*8+eax], sp
        BTC     word ptr [esi*8+eax], bp
        BTC     word ptr [esi*8+eax], si
        BTC     word ptr [esi*8+eax], di
        
        BTC     dword ptr [esi*8+eax], eax
        BTC     dword ptr [esi*8+eax], ecx
        BTC     dword ptr [esi*8+eax], edx
        BTC     dword ptr [esi*8+eax], ebx
        BTC     dword ptr [esi*8+eax], esp
        BTC     dword ptr [esi*8+eax], ebp
        BTC     dword ptr [esi*8+eax], esi
        BTC     dword ptr [esi*8+eax], edi
        
        BTC     word ptr [edi+eax], ax
        BTC     word ptr [edi+eax], cx
        BTC     word ptr [edi+eax], dx
        BTC     word ptr [edi+eax], bx
        BTC     word ptr [edi+eax], sp
        BTC     word ptr [edi+eax], bp
        BTC     word ptr [edi+eax], si
        BTC     word ptr [edi+eax], di
        
        BTC     dword ptr [edi+eax], eax
        BTC     dword ptr [edi+eax], ecx
        BTC     dword ptr [edi+eax], edx
        BTC     dword ptr [edi+eax], ebx
        BTC     dword ptr [edi+eax], esp
        BTC     dword ptr [edi+eax], ebp
        BTC     dword ptr [edi+eax], esi
        BTC     dword ptr [edi+eax], edi
        
        BTC     word ptr [edi*2+eax], ax
        BTC     word ptr [edi*2+eax], cx
        BTC     word ptr [edi*2+eax], dx
        BTC     word ptr [edi*2+eax], bx
        BTC     word ptr [edi*2+eax], sp
        BTC     word ptr [edi*2+eax], bp
        BTC     word ptr [edi*2+eax], si
        BTC     word ptr [edi*2+eax], di
        
        BTC     dword ptr [edi*2+eax], eax
        BTC     dword ptr [edi*2+eax], ecx
        BTC     dword ptr [edi*2+eax], edx
        BTC     dword ptr [edi*2+eax], ebx
        BTC     dword ptr [edi*2+eax], esp
        BTC     dword ptr [edi*2+eax], ebp
        BTC     dword ptr [edi*2+eax], esi
        BTC     dword ptr [edi*2+eax], edi
        
        BTC     word ptr [edi*4+eax], ax
        BTC     word ptr [edi*4+eax], cx
        BTC     word ptr [edi*4+eax], dx
        BTC     word ptr [edi*4+eax], bx
        BTC     word ptr [edi*4+eax], sp
        BTC     word ptr [edi*4+eax], bp
        BTC     word ptr [edi*4+eax], si
        BTC     word ptr [edi*4+eax], di
        
        BTC     dword ptr [edi*4+eax], eax
        BTC     dword ptr [edi*4+eax], ecx
        BTC     dword ptr [edi*4+eax], edx
        BTC     dword ptr [edi*4+eax], ebx
        BTC     dword ptr [edi*4+eax], esp
        BTC     dword ptr [edi*4+eax], ebp
        BTC     dword ptr [edi*4+eax], esi
        BTC     dword ptr [edi*4+eax], edi
        
        BTC     word ptr [edi*8+eax], ax
        BTC     word ptr [edi*8+eax], cx
        BTC     word ptr [edi*8+eax], dx
        BTC     word ptr [edi*8+eax], bx
        BTC     word ptr [edi*8+eax], sp
        BTC     word ptr [edi*8+eax], bp
        BTC     word ptr [edi*8+eax], si
        BTC     word ptr [edi*8+eax], di
        
        BTC     dword ptr [edi*8+eax], eax
        BTC     dword ptr [edi*8+eax], ecx
        BTC     dword ptr [edi*8+eax], edx
        BTC     dword ptr [edi*8+eax], ebx
        BTC     dword ptr [edi*8+eax], esp
        BTC     dword ptr [edi*8+eax], ebp
        BTC     dword ptr [edi*8+eax], esi
        BTC     dword ptr [edi*8+eax], edi
        
        BTC     word ptr [eax+ecx], ax
        BTC     dword ptr [eax+ecx], edi
        
        BTC     word ptr [eax*2+ecx], ax
        BTC     dword ptr [eax*2+ecx], edi
        
        BTC     word ptr [eax*4+ecx], ax
        BTC     dword ptr [eax*4+ecx], edi
        
        BTC     word ptr [eax*8+ecx], ax
        BTC     dword ptr [eax*8+ecx], edi
        
        BTC     word ptr [ecx+ecx], ax
        BTC     dword ptr [ecx+ecx], edi
        
        BTC     word ptr [ecx*2+ecx], ax
        BTC     dword ptr [ecx*2+ecx], edi
        
        BTC     word ptr [ecx*4+ecx], ax
        BTC     dword ptr [ecx*4+ecx], edi
        
        BTC     word ptr [ecx*8+ecx], ax
        BTC     dword ptr [ecx*8+ecx], edi
        
        BTC     word ptr [edx+ecx], ax
        BTC     dword ptr [edx+ecx], edi
        
        BTC     word ptr [edx*2+ecx], ax
        BTC     dword ptr [edx*2+ecx], edi
        
        BTC     word ptr [edx*4+ecx], ax
        BTC     dword ptr [edx*4+ecx], edi
        
        BTC     word ptr [edx*8+ecx], ax
        BTC     dword ptr [edx*8+ecx], edi
        
        BTC     word ptr [ebx+ecx], ax
        BTC     dword ptr [ebx+ecx], edi
        
        BTC     word ptr [ebx*2+ecx], ax
        BTC     dword ptr [ebx*2+ecx], edi
        
        BTC     word ptr [ebx*4+ecx], ax
        BTC     dword ptr [ebx*4+ecx], edi
        
        BTC     word ptr [ebx*8+ecx], ax
        BTC     dword ptr [ebx*8+ecx], edi
        
        BTC     word ptr [ebp+ecx], ax
        BTC     dword ptr [ebp+ecx], edi
        
        BTC     word ptr [ebp*2+ecx], ax
        BTC     dword ptr [ebp*2+ecx], edi
        
        BTC     word ptr [ebp*4+ecx], ax
        BTC     word ptr [ebp*4+ecx], cx
        BTC     word ptr [ebp*4+ecx], dx
        BTC     word ptr [ebp*4+ecx], bx
        BTC     word ptr [ebp*4+ecx], sp
        BTC     word ptr [ebp*4+ecx], bp
        BTC     word ptr [ebp*4+ecx], si
        BTC     word ptr [ebp*4+ecx], di
        
        BTC     dword ptr [ebp*4+ecx], eax
        BTC     dword ptr [ebp*4+ecx], ecx
        BTC     dword ptr [ebp*4+ecx], edx
        BTC     dword ptr [ebp*4+ecx], ebx
        BTC     dword ptr [ebp*4+ecx], esp
        BTC     dword ptr [ebp*4+ecx], ebp
        BTC     dword ptr [ebp*4+ecx], esi
        BTC     dword ptr [ebp*4+ecx], edi
       
        BTC     word ptr [ebp*8+ecx], ax
        BTC     word ptr [ebp*8+ecx], cx
        BTC     word ptr [ebp*8+ecx], dx
        BTC     word ptr [ebp*8+ecx], bx
        BTC     word ptr [ebp*8+ecx], sp
        BTC     word ptr [ebp*8+ecx], bp
        BTC     word ptr [ebp*8+ecx], si
        BTC     word ptr [ebp*8+ecx], di
        
        BTC     dword ptr [ebp*8+ecx], eax
        BTC     dword ptr [ebp*8+ecx], ecx
        BTC     dword ptr [ebp*8+ecx], edx
        BTC     dword ptr [ebp*8+ecx], ebx
        BTC     dword ptr [ebp*8+ecx], esp
        BTC     dword ptr [ebp*8+ecx], ebp
        BTC     dword ptr [ebp*8+ecx], esi
        BTC     dword ptr [ebp*8+ecx], edi
        
        BTC     word ptr [esi+ecx], ax
        BTC     word ptr [esi+ecx], cx
        BTC     word ptr [esi+ecx], dx
        BTC     word ptr [esi+ecx], bx
        BTC     word ptr [esi+ecx], sp
        BTC     word ptr [esi+ecx], bp
        BTC     word ptr [esi+ecx], si
        BTC     word ptr [esi+ecx], di
        
        BTC     dword ptr [esi+ecx], eax
        BTC     dword ptr [esi+ecx], ecx
        BTC     dword ptr [esi+ecx], edx
        BTC     dword ptr [esi+ecx], ebx
        BTC     dword ptr [esi+ecx], esp
        BTC     dword ptr [esi+ecx], ebp
        BTC     dword ptr [esi+ecx], esi
        BTC     dword ptr [esi+ecx], edi
        
        BTC     word ptr [esi*2+ecx], ax
        BTC     word ptr [esi*2+ecx], cx
        BTC     word ptr [esi*2+ecx], dx
        BTC     word ptr [esi*2+ecx], bx
        BTC     word ptr [esi*2+ecx], sp
        BTC     word ptr [esi*2+ecx], bp
        BTC     word ptr [esi*2+ecx], si
        BTC     word ptr [esi*2+ecx], di
        
        BTC     dword ptr [esi*2+ecx], eax
        BTC     dword ptr [esi*2+ecx], ecx
        BTC     dword ptr [esi*2+ecx], edx
        BTC     dword ptr [esi*2+ecx], ebx
        BTC     dword ptr [esi*2+ecx], esp
        BTC     dword ptr [esi*2+ecx], ebp
        BTC     dword ptr [esi*2+ecx], esi
        BTC     dword ptr [esi*2+ecx], edi
        
        BTC     word ptr [esi*4+ecx], ax
        BTC     word ptr [esi*4+ecx], cx
        BTC     word ptr [esi*4+ecx], dx
        BTC     word ptr [esi*4+ecx], bx
        BTC     word ptr [esi*4+ecx], sp
        BTC     word ptr [esi*4+ecx], bp
        BTC     word ptr [esi*4+ecx], si
        BTC     word ptr [esi*4+ecx], di
        
        BTC     dword ptr [esi*4+ecx], eax
        BTC     dword ptr [esi*4+ecx], ecx
        BTC     dword ptr [esi*4+ecx], edx
        BTC     dword ptr [esi*4+ecx], ebx
        BTC     dword ptr [esi*4+ecx], esp
        BTC     dword ptr [esi*4+ecx], ebp
        BTC     dword ptr [esi*4+ecx], esi
        BTC     dword ptr [esi*4+ecx], edi
        
        BTC     word ptr [esi*8+ecx], ax
        BTC     word ptr [esi*8+ecx], cx
        BTC     word ptr [esi*8+ecx], dx
        BTC     word ptr [esi*8+ecx], bx
        BTC     word ptr [esi*8+ecx], sp
        BTC     word ptr [esi*8+ecx], bp
        BTC     word ptr [esi*8+ecx], si
        BTC     word ptr [esi*8+ecx], di
        
        BTC     dword ptr [esi*8+ecx], eax
        BTC     dword ptr [esi*8+ecx], ecx
        BTC     dword ptr [esi*8+ecx], edx
        BTC     dword ptr [esi*8+ecx], ebx
        BTC     dword ptr [esi*8+ecx], esp
        BTC     dword ptr [esi*8+ecx], ebp
        BTC     dword ptr [esi*8+ecx], esi
        BTC     dword ptr [esi*8+ecx], edi
        
        BTC     word ptr [edi+ecx], ax
        BTC     word ptr [edi+ecx], cx
        BTC     word ptr [edi+ecx], dx
        BTC     word ptr [edi+ecx], bx
        BTC     word ptr [edi+ecx], sp
        BTC     word ptr [edi+ecx], bp
        BTC     word ptr [edi+ecx], si
        BTC     word ptr [edi+ecx], di
        
        BTC     dword ptr [edi+ecx], eax
        BTC     dword ptr [edi+ecx], ecx
        BTC     dword ptr [edi+ecx], edx
        BTC     dword ptr [edi+ecx], ebx
        BTC     dword ptr [edi+ecx], esp
        BTC     dword ptr [edi+ecx], ebp
        BTC     dword ptr [edi+ecx], esi
        BTC     dword ptr [edi+ecx], edi
        
        BTC     word ptr [edi*2+ecx], ax
        BTC     word ptr [edi*2+ecx], cx
        BTC     word ptr [edi*2+ecx], dx
        BTC     word ptr [edi*2+ecx], bx
        BTC     word ptr [edi*2+ecx], sp
        BTC     word ptr [edi*2+ecx], bp
        BTC     word ptr [edi*2+ecx], si
        BTC     word ptr [edi*2+ecx], di
        
        BTC     dword ptr [edi*2+ecx], eax
        BTC     dword ptr [edi*2+ecx], ecx
        BTC     dword ptr [edi*2+ecx], edx
        BTC     dword ptr [edi*2+ecx], ebx
        BTC     dword ptr [edi*2+ecx], esp
        BTC     dword ptr [edi*2+ecx], ebp
        BTC     dword ptr [edi*2+ecx], esi
        BTC     dword ptr [edi*2+ecx], edi
        
        BTC     word ptr [edi*4+ecx], ax
        BTC     word ptr [edi*4+ecx], cx
        BTC     word ptr [edi*4+ecx], dx
        BTC     word ptr [edi*4+ecx], bx
        BTC     word ptr [edi*4+ecx], sp
        BTC     word ptr [edi*4+ecx], bp
        BTC     word ptr [edi*4+ecx], si
        BTC     word ptr [edi*4+ecx], di
        
        BTC     dword ptr [edi*4+ecx], eax
        BTC     dword ptr [edi*4+ecx], ecx
        BTC     dword ptr [edi*4+ecx], edx
        BTC     dword ptr [edi*4+ecx], ebx
        BTC     dword ptr [edi*4+ecx], esp
        BTC     dword ptr [edi*4+ecx], ebp
        BTC     dword ptr [edi*4+ecx], esi
        BTC     dword ptr [edi*4+ecx], edi
        
        BTC     word ptr [edi*8+ecx], ax
        BTC     word ptr [edi*8+ecx], cx
        BTC     word ptr [edi*8+ecx], dx
        BTC     word ptr [edi*8+ecx], bx
        BTC     word ptr [edi*8+ecx], sp
        BTC     word ptr [edi*8+ecx], bp
        BTC     word ptr [edi*8+ecx], si
        BTC     word ptr [edi*8+ecx], di
        
        BTC     dword ptr [edi*8+ecx], eax
        BTC     dword ptr [edi*8+ecx], ecx
        BTC     dword ptr [edi*8+ecx], edx
        BTC     dword ptr [edi*8+ecx], ebx
        BTC     dword ptr [edi*8+ecx], esp
        BTC     dword ptr [edi*8+ecx], ebp
        BTC     dword ptr [edi*8+ecx+44h], esi
        BTC     word ptr DS:[ebx+11111130h], 15h
        
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
        
        JMP     [bx+si+34h]
        JMP     [bx+di]
        JMP     [bp+si]
        JMP     [bp+di]
        JMP     [bx]
        JMP     gs:[si]
        JMP     [di]
        
        JMP     ds:[10h] 
        JMP     cs:[10h]
        JMP     es:[10h]
        JMP     ss:[10h]
        JMP     fs:[10h]
        
        JMP     [eax]
        JMP     [ecx]                   
        JMP     [edx]                   
        JMP     [ebx]                  
        JMP     [esi]
        JMP     [edi]                                                                   
        
        JMP     [eax*8+eax]
        
        db      66h, 0EAh, 78h, 56h, 34h, 12h, 02h, 01h
        db      0EAh, 78h, 56h, 34h, 12h
        DAS
end start