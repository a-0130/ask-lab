; Zad. 2 c2f.asm
[bits 32]

C equ -5

call getaddr
format db "C = %d F = %d", 0xA, 0

getaddr:
pop esi

mov eax, C

imul eax, 9
cdq
mov ecx, 5
idiv ecx

add eax, 32

push eax        ; F
push dword C    ; C
push esi        ; format

call [ebx+0Ch]
add esp, 12

push 0
call [ebx]