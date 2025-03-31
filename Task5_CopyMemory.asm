section .text
global _start

_start:
    ;Task 5: Copy Memory (movs Instruction)
    sub rsp, 16
    mov rsi, rsp
    lea rdi, [rsp+8]
    mov rax, 0xDEADBEEFCAFEBABE
    mov [rsi], rax
    movsq
    mov rbx, [rsi-8]
    mov rdx, [rdi-8]    
    add rsp, 16

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
