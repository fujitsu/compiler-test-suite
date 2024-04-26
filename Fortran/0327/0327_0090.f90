module m
type xdef
sequence
character:: x='2'
end type
end module

use m
type (xdef)::xx,yy
character:: r,func
r = func (xx,yy)
if ( xx%x=='3' .and. r=='2' ) then
  print *,'pass'
else
  print *,'ng',r , xx%x,yy%x
end if
end

function func(xx,yy) result( r )
use m
character :: r
type (xdef)::xx
type (xdef)::yy
xx%x = '3'
r=yy%x
end
