[bits 32]

F equ 5

mov eax, F

sub eax, 32

mov ecx, 5
imul ecx

mov ecx, 9
cdq
idiv ecx

push eax
push dword F

call getaddr
format:
db "F = %d", 0xA
db "C = %d", 0xA, 0
getaddr:

call [ebx+3*4]
add esp, 3*4

push 0
call [ebx+0*4]