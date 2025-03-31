section .text
global _start

_start:
    ;Task 8: Store and Load a QWORD (64-bit)
    sub rsp, 8
    mov rbx, 0xDEADBEEF12345678
    mov [rsp], rbx
    mov rax, [rsp]
    add rsp, 8

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
