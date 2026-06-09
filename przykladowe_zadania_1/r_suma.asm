; Zad. r_suma.asm
[bits 32]

n equ 4

call getaddr
format db "suma = %d", 0xA, 0

getaddr:
pop esi

mov ecx, n
call suma

push eax
push esi
call [ebx+0Ch]
add esp, 8

push 0
call [ebx]

suma:
cmp ecx, 1
je stop

push ecx
dec ecx
call suma
pop ecx

mov edx, ecx
shl edx, 1
dec edx

add eax, edx
ret

stop:
mov eax, 1
ret