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
type (xdef)::xx,yy
integer:: r,func
r = func (xx,yy)
if ( xx%z%zz==3 .and. r==2 ) then
  print *,'pass'
else
  print *,'ng',r , xx%z%zz,yy%z%zz
end if
end

function func(xx,yy) result( r )
use m
integer :: r
type (xdef)::xx
type (xdef)::yy
xx%z%zz = yy%z%zz+1
r=yy%z%zz
end
