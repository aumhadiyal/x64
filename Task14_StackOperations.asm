section .text
global _start

_start:
    ;Task 14: Stack Operations (Push & Pop)
    mov rax, 0x1111111111111111
    push rax
    mov rax, 0x2222222222222222
    push rax
    mov rax, 0x3333333333333333
    push rax
    mov rax, 0x4444444444444444
    push rax

    pop rdx
    pop rcx
    pop rbx
    pop rsi

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
