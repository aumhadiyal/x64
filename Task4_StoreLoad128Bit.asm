section .text
global _start

_start:
    ;Task 4: Store and Load 128-Bit Value Using xmm0
    sub rsp, 16
    mov rax, 0x1122334455667788
    mov [rsp], rax
    mov rax, 0x99AABBCCDDEEFF00
    mov [rsp+8], rax
    movdqu xmm0, [rsp]
    add rsp, 16

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
