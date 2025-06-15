[org 0x0100]

mov cx,20
mov ax,0
l1: add ax,20
    sub cx,1
    jnz l1

   mov[result],ax
    
    mov ax,0x4c00
    int 0x21

result :dw 0