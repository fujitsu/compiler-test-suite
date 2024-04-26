module m
type xdef
sequence
character:: x='2'
end type
end module

use m
type (xdef)::xx(5)
character :: r,func
r = func (xx,xx)
print * , r , xx(5)%x
print *,'pass'
end

function func(xx,yy) result( r )
use m
character :: r
type (xdef)::xx(5)
type (xdef)::yy(5)
xx(5)%x = yy(5)%x
r=yy(5)%x
end
