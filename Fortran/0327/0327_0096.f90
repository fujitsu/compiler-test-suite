module m
type zdef
 sequence
 integer :: zz=2
end type
type xdef
sequence
 type(zdef) :: z
end type
end module

use m
type (xdef)::xx(5),yy(5)
integer :: r,func
r = func (xx,yy)
if ( xx(5)%z%zz==3 .and. r==2 ) then
  print *,'pass'
else
  print *,'ng',r , xx(5)%z%zz,yy(5)%z%zz
end if
end

function func(xx,yy) result( r )
use m
integer :: r
type (xdef)::xx(5)
type (xdef)::yy(5)
xx(5)%z%zz = yy(5)%z%zz+1
r=yy(5)%z%zz
end
