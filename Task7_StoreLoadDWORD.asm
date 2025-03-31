section .text
global _start

_start:
    ;Task 7: Store and Load a DWORD (32-bit)
    sub rsp, 4
    mov dword [rsp], 0xCAFEB00B
    mov eax, [rsp]
    add rsp, 4

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
