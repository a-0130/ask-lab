; Zad. 1 min.asm
[bits 32]

a equ 7
b equ 3

call getaddr
format db "min = %d", 0xA, 0
getaddr:
pop esi

mov eax, a
mov ecx, b

cmp eax, ecx
jle dalej
mov eax, ecx

dalej:
push eax
push esi
call [ebx+0Ch]
add esp, 8

push 0
call [ebx]