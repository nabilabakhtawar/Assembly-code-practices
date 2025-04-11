[org 0x0100]
mov ax, 0
mov cx, 6
li:add ax, 6
   sub cx, 1
   jnz li     
mov [total], ax
mov ax,0x4c00 
int 0x21
total dw 0


