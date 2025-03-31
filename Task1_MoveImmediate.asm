section .text
global _start

_start:
    ;Task 1: Move an Immediate Value to a Register 
    mov rsp, 0x1122334455667788

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
