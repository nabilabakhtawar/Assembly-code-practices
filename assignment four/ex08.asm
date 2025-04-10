[org 0x0100]
mov bx,num1
mov cx,10
mov ax,0
li: add ax,[bx]
    add bx,2
    sub cx,1
    jnz  li
    mov  [total],ax 
    mov   ax,0x4c00
    int   0x21
num1:dw 10,20,30,40,50,10,20,30,40,50
total:dw 0