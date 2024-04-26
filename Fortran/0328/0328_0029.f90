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
type (xdef) :: x,r
r = func (x,x)
print *,'pass'
contains

function func(xx,yy) result( r )
  type (xdef) :: xx,yy,r
  xx%z%zz = 20
  r%z%zz=yy%z%zz
end function
end
