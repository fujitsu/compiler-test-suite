!
!
module mod
integer,parameter:: mtype = 8
contains
subroutine sub(m, a, b)
integer(kind=mtype) , value :: m
integer(kind=4) , n
real*4    a(16), b(2)
n = m+1
do i=1,n
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
if (a(1).ne.0) print *, 'NG:1', a(1)
if (a(2).ne.0) print *, 'NG:2', a(2)
if (.not.all(a(3:16).eq.3)) print *, 'NG:3', a(3:16)
a = 3
call sub(2_mtype, a, b)
if (a(1).ne.12) print *, 'NG:4', a(1)
if (a(2).ne.12) print *, 'NG:5', a(2)
if (a(3).ne.12) print *, 'NG:6', a(3)
if (.not.all(a(4:16).eq.3)) print *, 'NG:7', a(4:16)
print *, 'PASS'
end
