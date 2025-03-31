section .text
global _start

_start:
    ;Task 11: Indexed Addressing
    sub rsp, 8
    mov dword [rsp], 0x12345678
    mov eax, [rsp]
    mov dword [rsp+4], eax
    mov ebx, [rsp+4]
    add rsp, 8

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
