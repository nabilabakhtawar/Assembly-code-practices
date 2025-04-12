     [org 0X0100]
     mov ax,[num1]
     mov bx,[num2]
     add ax,bx
     mov bx,[num3]
     add ax,bx
     mov [num4],ax 
     mov ax,0X4c00
     int 0x21
     num1:dw 5
     num2:dw 10
     num3:dw 15
     num4: dw 0