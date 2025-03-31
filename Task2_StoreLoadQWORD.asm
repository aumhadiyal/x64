section .text
global _start

_start:
    ;Task 2: Store and Load a QWORD
    sub rsp, 8
    mov rax, rsp
    mov rbx, 0xAABBCCDDEEFF0011
    mov [rax], rbx
    mov rcx, [rax]
    add rsp, 8

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
