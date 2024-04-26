!
!
module mod
integer,parameter:: mtype = 8
contains
subroutine sub(m, a, b)
integer(kind=mtype) , value :: m
integer(kind=mtype) , n
real*4    a(16), b(2)
n = ior(m,1)
do i=1,n+1
a(i) = a(i) * b(m+1)
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
if (a(1).ne.12) print *, 'NG:1', a(1)
if (a(2).ne.12) print *, 'NG:2', a(2)
if (.not.all(a(3:16).eq.3)) print *, 'NG:3', a(3:16)
a = 3
call sub(0_mtype, a, b)
if (a(1).ne.0) print *, 'NG:4', a(1)
if (.not.all(a(5:16).eq.3)) print *, 'NG:7', a(5:16)
print *, 'PASS'
end
