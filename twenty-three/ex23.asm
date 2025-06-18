[org 0x0100]
jmp start
num1:dw 0x2318,0x2318,0x2337,0x124c

start:clc
mov ax,[num1]
mov ax,[num1+2]
mov ax,[num1+4]
mov bx,[0x0100]
testax,bx

mov ax,0x4c00
int 0x21