[bits 32]

n equ 3

mov ecx, n
mov eax, 0
mov edx, 1

petla:

add eax, edx
add edx, 2

dec ecx
jnz petla

push eax

call getaddr
format:
db "suma = %i", 0xA, 0
getaddr:

call [ebx+3*4]
add esp, 2*4

push 0
call [ebx+0*4]