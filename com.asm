    .model tiny
    .486
    .data
A db 12h
B dw 1234h
    .code
    org 100h   
start:
;example
    btc     eax, eax
    das
end start