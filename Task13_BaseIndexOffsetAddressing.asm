section .text
global _start

_start:
    ;Task 13: Base + Index + Offset Addressing (Struct-like Access)
    sub rsp, 32
    mov rsi, rsp           ; Base pointer
    mov rbx, 0             ; Index
    mov dword [rsi+rbx+fieldInteger], 0x32323232
    mov word [rsi+rbx+fieldShort], 0x1616
    mov byte [rsi+rbx+fieldByte], 0x22
    mov byte [rsi+rbx+fieldPadding], 0x99
    mov rax, 0x6464646464646464
    mov [rsi+rbx+fieldLong], rax

    inc rbx                ; Increment index
    shl rbx, 4             ; Update index for next struct
    mov dword [rsi+rbx+fieldInteger], 0xAAAAAAAA
    mov word [rsi+rbx+fieldShort], 0xBBBB
    mov byte [rsi+rbx+fieldByte], 0xCC
    mov byte [rsi+rbx+fieldPadding], 0xFF
    mov rax, 0xABCDEFABCDEFABCD
    mov [rsi+rbx+fieldLong], rax

    add rsp, 32

    ; Exit program
    mov rdi, 0              ; Exit code 0
    mov rax, 60             ; sys_exit syscall number
    syscall                 ; Call kernel to exit
