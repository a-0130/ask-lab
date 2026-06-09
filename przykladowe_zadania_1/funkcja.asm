[bits 32]

; f(x) = x - 1

call getaddr

x    dq 5.5

getaddr:

finit

mov ebp, [esp]

fld qword [ebp]      ; x
fld1                 ; 1.0

fsubp st1            ; x - 1

sub esp, 8
fstp qword [esp]

call getaddr2
format db "wynik = %lf", 0xA, 0
getaddr2:

call [ebx+3*4]
add esp, 12

push 0
call [ebx+0*4]