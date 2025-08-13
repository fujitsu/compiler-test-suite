module m
type zdef
 sequence
 integer :: zz=2
end type
type xdef
sequence
 type(zdef) ::z
end type
end module

use m
type(xdef),dimension(10,10)::x
call sub(x(1:10:2,1),x(1,1:5))
print *,'pass'
contains

subroutine sub(a,b)
type(xdef),dimension(:)::a,b
integer :: i
write(22,*) a(1),a(2),a(3),a(4),a(5)
do i=1,5
a(i)=b(i)
end do
write(22,*) a(1),a(2),a(3),a(4),a(5)
end subroutine
end
