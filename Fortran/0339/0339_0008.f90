!
!
module mod
integer,parameter:: mtype = 4
contains
subroutine sub(m, a, b)
integer(kind=mtype) , value :: m
integer(kind=mtype) , n
real*4    a(16), b(3)
n = m
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
call sub(1, a, b)
if (a(1).ne.0) print *, 'NG:1', a(1)
if (.not.all(a(2:16).eq.3)) print *, 'NG:3', a(2:16)
a = 3
call sub(2, a, b)
if (a(1).ne.12) print *, 'NG:4', a(1)
if (a(2).ne.12) print *, 'NG:5', a(2)
if (.not.all(a(3:16).eq.3)) print *, 'NG:6', a(3:16)
a = 3
b(3) = 4
call sub(3, a, b)
if (.not.all(a(1:3).eq.12)) print *, 'NG:7', a(1:3)
if (.not.all(a(4:16).eq.3)) print *, 'NG:8', a(4:16)
print *, 'PASS'
end
