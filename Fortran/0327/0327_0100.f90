module m
type xdef
sequence
character,dimension(10):: x='2'
end type
end module

use m
type (xdef)::xx,yy
character :: func,r
r = func (xx,yy)
if ( xx%x(10)=='3' .and. r=='2' ) then
  print *,'pass'
else
  print *,'ng',r , xx%x(10),yy%x(10)
end if
end

function func(xx,yy) result(r)
use m
character :: r
type (xdef)::xx
type (xdef)::yy
xx%x(10) ='3' 
r=yy%x(10)
end
