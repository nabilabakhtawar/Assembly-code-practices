[org 0x0100]

mov ax,0
mov cx,9

li: test ax,[num1]
    sub cx,1
     jnz li
     mov [result],ax
    mov ax,0x4c00
    int 0x21

num1: dw 9,8,7,6,5,4,3,2,1

result:dw 0