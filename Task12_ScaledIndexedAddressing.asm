section .text
global _start

_start:
    ;Task 12: Scaled Indexed Addressing (Arrays in Assembly)
    sub rsp, 24
    mov rdx, 0x1111111111111111
    mov r8, 1              ; Seed multiplier
    mov rbx, 0             ; Base index
    mov rcx, 3             ; Counter for loop

    seed_loop:
        imul rdx, r8       ; Multiply rdx by r8 (current seed)
        mov [rsp + rbx*8], rdx ; Store value in the array
        inc r8             ; Increment multiplier
        inc rbx            ; Increment index
        loop seed_loop     ; Loop three times

    ; Read array values
    mov rbx, 0             ; Reset index for reading
    mov rcx, 3             ; Counter for reading loop

    index_loop:
        mov rax, [rsp + rbx*8] ; Load values from the array
        inc rbx            ; Increment index
        loop index_loop     ; Loop three times

    add rsp, 24

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
