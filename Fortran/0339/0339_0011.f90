!
!
module mod
integer,parameter:: mtype = 8
contains
subroutine sub(m, a, b)
integer(kind=mtype) , value :: m
integer(kind=mtype) , n
real*4    a(16), b(8)
n = m/3
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
call sub(3_mtype, a, b)
if (.not.all(a(1:1).eq.0)) print *, 'NG:1', a(1)
if (.not.all(a(3:16).eq.3)) print *, 'NG:3', a(3:16)
a = 3
call sub(6_mtype, a, b)
if (.not.all(a(1:2).eq.0)) print *, 'NG:4', a(1:4)
if (.not.all(a(3:16).eq.3)) print *, 'NG:7', a(5:16)
print *, 'PASS'
end
