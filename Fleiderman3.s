! Santiago Fleiderman
!Csc 3210
! 09/26/2016
! y = 5x^2+6x+17
! Assignment 2

.section ".data"



! X and Y Variables




.section ".text"
.global main
main:
save %sp,-96,%sp

mov 0,%l0 ! x =0
mov 17,%l1

.global loop
loop:
add %l0,1,%l0 ! add +1
mov %l0,%o0 ! o0 x
mov %l0,%o1 ! o1 x
call .mul ! x^2% o0=x^2
nop
mov 5, %o1
call .mul ! 5x^2 default o0*o1
nop
mov %o0, %l2
mov 6,%o0 ! results stores here
mov %l0,%o1
call .mul ! 6x
nop
add %l2,%o0,%o1
add %o1, 17,%l1

!add %l0,1,%l0 ! add +1
mov 9,%l4
subcc %l4,%l0,%g0 ! condition needs to be greater than ! zero,must be
! so that it can be zero 0--9, needs to get to zero.
bg  loop
nop

mov 1,%g1
ta 0


















