module m
type xdef
sequence
integer:: x=2
end type
end module

use m
type (xdef)::xx(5),yy(5)
integer:: r,func,ent
r = func (xx(5),yy(5)) + ent(xx(5),yy(5))
if ( xx(5)%x==4 .and. yy(5)%x==2 .and. r==8 ) then
  print *,'pass'
else
  print *,'ng',r , xx%x,yy%x
end if
end

function func(xx,yy) result( r )
use m
integer :: r
type (xdef)::xx
type (xdef)::yy
xx%x = yy%x+1
  r=yy%x
entry ent(xx,yy) result (r)
if ( xx%x==3) then
  xx%x=xx%x+1
end if
r=xx%x
end
