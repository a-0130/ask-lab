[bits 32]

call getaddr

x    dq 1.5

getaddr:

finit

mov ebp, [esp]

fldpi
fld qword [ebp]

fsubp st1

fstp qword [esp]

call getaddr2
format:
db "wynik = %lf", 0xA, 0
getaddr2:

call [ebx+3*4]
add esp, 3*4

push 0
call [ebx+0*4]