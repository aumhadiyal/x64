section .text
global _start

_start:
    ;Task 15: Mixing Stack Values
    sub rsp, 32
    mov rsi, rsp
    mov rcx, 4
    mov rdx, 0x1111111111111111
    mov r9, 1
    mov r10, 8
    call seed
    call read
    add rsp, 32

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit

seed:
    mov rbx, 0              ; Index
    mov r8, r9              ; Value multiplier
    mov rax, rdx
    seed_loop:
        imul rax, r8
        mov [rsi + rbx * 8], rax
        inc rbx
        inc r8
        loop seed_loop
    ret

read:
    mov rbx, 0
    mov r9, [rsi + rbx * 8]
    inc rbx
    mov r10, [rsi + rbx * 8]
    inc rbx
    mov r11, [rsi + rbx * 8]
    inc rbx
    mov r12, [rsi + rbx * 8]
    ret
