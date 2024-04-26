!
!
module mod
integer,parameter:: mtype = 8
contains
subroutine sub(m, a, b)
integer(kind=mtype) , value :: m
integer(kind=mtype) , n
real*4    a(16), b(3)
n = ishft(m, 1)
do i=1,n+1
a(i) = a(i) * b(m)
end do
end subroutine
end module

program main
use mod
real*4    a(16), b(16)
a = 3
b = 0
b(2) = 4
call sub(1_mtype, a, b)
if (.not.all(a(1:3).eq.0)) print *, 'NG:1', a(1)
if (.not.all(a(4:16).eq.3)) print *, 'NG:3', a(3:16)
a = 3
call sub(2_mtype, a, b)
if (.not.all(a(1:5).eq.12)) print *, 'NG:4', a(1:5)
if (.not.all(a(6:16).eq.3)) print *, 'NG:7', a(6:16)
print *, 'PASS'
end
