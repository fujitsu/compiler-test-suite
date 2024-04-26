module m
type xdef
sequence
integer,dimension(10):: x=2
integer,dimension(10):: y=3
end type
end module
use m
type (xdef)::xx(5),yy(5)
integer :: r,func,ent
r = func (xx,yy) + ent(xx,yy)
if ( xx(5)%x(10)==7 .and. r==14 ) then
  print *,'pass'
else
  print *,'ng',r , xx%x(10),yy%x(10)
end if
end

function func(xx,yy) result( r )
use m
integer :: r
type (xdef)::xx(5)
type (xdef)::yy(5)
xx(5)%x(10) = yy(5)%x(10)+1+yy(5)%y(10)
r=yy(5)%x(10)
entry ent(xx,yy) result (r)
if ( xx(5)%x(10)==6 ) then
  xx(5)%x(10)=xx(5)%x(10)+1
end if
r=xx(5)%x(10)
end
