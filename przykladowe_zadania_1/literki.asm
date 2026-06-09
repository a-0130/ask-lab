[bits 32]

call getaddr
prompt db "str = ",0
getaddr:

call [ebx+3*4]

sub esp, 100

push esp
call getaddr2
format db "%s",0
getaddr2:

call [ebx+4*4]
add esp, 8

mov esi, esp

sprawdz:

mov al, [esi]

cmp al, 0
je male

cmp al, 'a'
jb niemale

cmp al, 'z'
ja niemale

inc esi
jmp sprawdz

male:

call getaddr3
txt1 db "napis zawiera tylko male litery",0xA,0
getaddr3:

call [ebx+3*4]

add esp, 100

push 0
call [ebx]

niemale:

call getaddr4
txt2 db "napis zawiera nie tylko male litery",0xA,0
getaddr4:

call [ebx+3*4]

add esp, 100

push 0
call [ebx]