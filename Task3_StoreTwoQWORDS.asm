section .text
global _start

_start:
    ;Task 3: Store Two QWORDS and Load Both
    sub rsp, 16
    mov rax, rsp
    mov rsi, 0xCAFEC0FFEE001111
    mov [rax], rsi    
    mov rsi, 0xCAFEC0FFEE002222
    mov [rax+8], rsi
    mov rcx, [rax]
    mov rdx, [rax+8]

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
