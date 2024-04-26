module m
type zdef
 sequence
 integer :: zz=2
end type
type xdef
sequence
 type(zdef) ::z(10)
end type
end module

use m
type(xdef)::x
x%z%zz=1
call sub(x%z(10)%zz,x%z(1)%zz)
if ( x%z(1)%zz==10 .and. x%z(10)%zz==5 ) then
  print *,'pass'
else
  print *,'ng',x%z%zz
end if
contains

subroutine sub(a,b)
integer :: a,b
a=5
b=10
end subroutine
end
