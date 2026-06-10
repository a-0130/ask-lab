[bits 32]

a equ 7
b equ 3

mov eax, a
mov edx, b

cmp eax, edx
jge dalej

mov eax, edx

dalej:

push eax

call getaddr
format:
db "max = %i", 0xA, 0
getaddr:

call [ebx+3*4]
add esp, 2*4

push 0
call [ebx+0*4]