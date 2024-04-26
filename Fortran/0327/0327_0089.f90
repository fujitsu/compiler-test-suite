module m
type xdef
sequence
complex:: x=(2,2)
end type
end module

use m
type (xdef)::xx,yy
complex:: r,func
r = func (xx,yy)
if ( xx%x==(3,3) .and. r==(2,2) ) then
  print *,'pass'
else
  print *,'ng',r , xx%x,yy%x
end if
end

function func(xx,yy) result( r )
use m
complex :: r
type (xdef)::xx
type (xdef)::yy
xx%x = yy%x+(1,1)
r=yy%x
end
