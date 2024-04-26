module m
type xdef
sequence
integer,dimension(10):: x=2
real :: r
end type
end module

use m
type (xdef)::xx,yy
integer :: func,r,ent
r = func (xx,yy) + ent(xx,yy)
if ( xx%x(10)==3 .and. yy%x(10)==2 .and. r==4 ) then
  print *,'pass'
else
  print *,'ng',r , xx%x(10),yy%x(10)
end if
end

function func(xx,yy) result(r)
use m
integer :: r
type (xdef)::xx
type (xdef)::yy
xx%x(10) = yy%x(10)+1
r=yy%x(10)
entry ent(xx,yy) result (r)
if ( yy%x(10)==3 ) then
  yy%x(10)=yy%x(10)+1
end if
r=yy%x(10)
end
