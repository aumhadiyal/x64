section .text
global _start

_start:
    ;Task 10: Modify Only Lower Bytes
    sub rsp, 40
    lea rax, [rsp]
    lea rbx, [rsp+8]
    lea rcx, [rsp+16]
    lea rdx, [rsp+24]
    mov rsi, 0x9999999999999999
    mov [rdx], rsi
    mov [rcx], dword 0x77777777
    mov [rbx], word 0x5555
    mov [rax], byte 0x33
    mov [rax], byte 0x22
    mov [rbx], byte 0x44
    mov [rcx], word 0x6666
    mov [rdx], dword 0x88888888

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
