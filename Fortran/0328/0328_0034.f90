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
type (xdef) :: x(10),r

r = func (x(1),x(1))
  print *,'pass'
contains

function func(xx,yy) result( r )
  type(xdef):: xx(9) , yy(5),r
  r%z%zz=xx(1)%z%zz+yy(5)%z%zz
  yy(5)%z%zz = 20
end function
end
