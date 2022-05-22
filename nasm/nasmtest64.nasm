    global main
    extern  GetStdHandle
    extern  WriteFile
    extern  ExitProcess

    section .text
main:
    ; DWORD  bytes;    
    mov     rbp, rsp
    sub     rsp, 4

    ; hStdOut = GetstdHandle( STD_OUTPUT_HANDLE)
    ;push    -11
    mov     rcx, -11
    call    GetStdHandle
    mov     rbx, rax

    ; WriteFile( hstdOut, message, length(message), &bytes, 0);
   ; push    0
    ;lea     rax, [rbp-4]
   ; push    rax
    mov     r10, 0
    mov     r9, 0
    mov     r8, (message_end - message)
    lea     rdx, [message]
    mov     rcx, rbx
    call    WriteFile

    ; ExitProcess(0)
    mov     rcx, 0
    call    ExitProcess

    ; never here
    hlt
message:
    db      'Hello, nasm64', 10
message_end: