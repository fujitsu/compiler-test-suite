module m
type zdef
 sequence
 integer :: zz=2
end type
type xdef
sequence
 type(zdef) ::z
end type

contains
subroutine sub(a,b)
type(xdef),dimension(:),target::a,b
integer :: i
do i=1,5
a(i)=b(i)
end do
end subroutine
end module

use m
type(xdef),dimension(10)::x
call sub(x(1:5),x(1:10:2))
  print *,x(1),x(2),x(3),x(4),x(5)
end
