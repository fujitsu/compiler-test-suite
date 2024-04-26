module m
type xdef
sequence
character,dimension(10):: x='2'
character,dimension(10):: y='3'
end type
end module
use m
type (xdef)::xx(5),yy(5)
character :: r,func
r = func (xx,yy)
if ( xx(5)%x(10)=='6' .and. r=='2' ) then
  print *,'pass'
else
  print *,'ng',r , xx%x(10),yy%x(10)
end if
end

function func(xx,yy) result( r )
use m
character :: r
type (xdef)::xx(5)
type (xdef)::yy(5)
xx(5)%x(10) = '6'
r=yy(5)%x(10)
end
