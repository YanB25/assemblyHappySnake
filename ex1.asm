; multi-segment executable file template.

data segment
    ; add your data here!
    map db 100 dup(0)
ends

stack segment stack
    DB 200 DUP(0)
stack ends

code segment  
ASSUME DS:DATA, SS:STACK, CS:CODE 
start:
    MOV AX, DATA 
    MOV DS, AX 
    mov ax, 4
    cmp [map + di], 3
 
code ends

end start ; set entry point and stop the assembler.
