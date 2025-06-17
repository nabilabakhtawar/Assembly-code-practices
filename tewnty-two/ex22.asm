[org 0x0100]
jmp start

student_id: db 2, 0, 2, 3, 4, 0, 1, 1
greatest: db 0
sub_result: db 0
sort_result: db 0
swap_flag: db 0

start:
    mov cx, 8
    mov bl, 0
    mov si, student_id

Find_greatest:
    mov al, [si]
    cmp al, bl
    jle next_number
    mov bl, al

next_number:
    inc si
    dec cx
    jnz Find_greatest
    mov [greatest], bl
    mov si, student_id   
    mov di, 0
    mov cx, 8

subroutine:
    mov al, [si]
    mov bl, [greatest]
    sub bl, al
    mov [sub_result + di], bl
    mov [sort_result + di], bl
    inc si
    inc di
    dec cx
    jnz subroutine
    
    mov bx, sort_result
    mov cx, 7

main_loop:
    mov si, 0
    mov byte[swap_flag], 0

inner_loop:
    mov al, [bx + si]
    cmp al, [bx + si + 1]
    jbe no_swap
    mov dl, [bx + si + 1]
    mov [bx + si], dl
    mov [bx + si + 1], al
    mov byte [swap_flag], 1

no_swap:
    inc si
    cmp si, cx
    jne inner_loop
    cmp byte [swap_flag], 1
    je main_loop

    
    mov ax, 0x4c00
    int 0x21