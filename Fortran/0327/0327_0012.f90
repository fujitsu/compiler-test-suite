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
type (xdef) :: x(10)
type (zdef) :: r

r = func (x(1)%z,x(6)%z)
if ( r%zz==4 .and. x(6)%z%zz==20 ) then
  print *,'pass'
else
  print *,'ng', r ,x
end if
contains

function func(xx,yy) result( r )
  type(zdef):: xx , yy,r
  r%zz=xx%zz+yy%zz
  yy%zz = 20
end function
end
