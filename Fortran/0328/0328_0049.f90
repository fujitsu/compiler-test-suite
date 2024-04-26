module m
type xdef
sequence
integer:: x=2
end type
end module

use m
type (xdef)::xx(5)
real :: r
r = func (xx,xx)
print * , r , xx(5)%x
print *,'pass'
end

function func(xx,yy) result( r )
use m
type (xdef)::xx(5)
type (xdef)::yy(5)
read *,xx(5)%x
read *,yy(5)%x
r=yy(5)%x
end
