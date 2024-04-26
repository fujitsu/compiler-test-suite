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
type (xdef) :: x,y,r
r = func (x,y)
if (r%z%zz==2 .and. x%z%zz==20 .and. y%z%zz==2) then
print *,'pass'
else
print *,'ng', r%z%zz , x%z%zz ,y%z%zz
end if
contains

function func(xx,yy) result( r )
  type (xdef) :: xx,yy,r
  xx%z%zz = 20
  r%z%zz=yy%z%zz
end function
end
