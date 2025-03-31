section .text
global _start

_start:
    ;Task 9: Mix Different Sizes
    sub rsp, 14
    mov word [rsp], 0x1616
    mov dword [rsp+2], 0x32323232
    mov rbx, 0x6464646464646464
    mov [rsp+6], rbx
    mov rax, [rsp+6]  ; Load 64-bit
    mov eax, [rsp+2]  ; Load 32-bit
    mov ax, [rsp]     ; Load 16-bit
    add rsp, 14

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
