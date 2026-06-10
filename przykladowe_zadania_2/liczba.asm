[bits 32]

call getaddr
prompt:
db "str = ", 0
getaddr:

call [ebx+3*4]

sub esp, 100

push esp

call getaddr2
format:
db "%s", 0
getaddr2:

call [ebx+4*4]
add esp, 2*4

mov esi, esp

mov al, [esi]
cmp al, 0
je nie

sprawdz:

mov al, [esi]

cmp al, 0
je tak

cmp al, '0'
jb nie

cmp al, '9'
ja nie

inc esi
jmp sprawdz

tak:

call getaddr3
tekst1:
db "napis zawiera liczbe nieujemna", 0xA, 0
getaddr3:

call [ebx+3*4]

add esp, 100

push 0
call [ebx+0*4]

nie:

call getaddr4
tekst2:
db "napis nie zawiera liczby nieujemnej", 0xA, 0
getaddr4:

call [ebx+3*4]

add esp, 100

push 0
call [ebx+0*4]