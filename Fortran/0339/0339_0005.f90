!
!
module mod
integer,parameter:: mtype = 4
contains
subroutine sub(m, a, b)
integer(kind=mtype) , value :: m
integer(kind=mtype) , n
real*4    a(16), b(0)
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
call sub(0, a, b)
if (.not.all(a(1:16).eq.3)) print *, 'NG:3', a(3:16)
print *, "PASS"
end
