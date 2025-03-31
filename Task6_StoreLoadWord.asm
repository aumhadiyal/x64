section .text
global _start

_start:
    ;Task 6: Store and Load a WORD (16-bit)
    sub rsp, 2
    mov word [rsp], 0xCAFE
    mov ax, [rsp]
    add rsp, 2

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
