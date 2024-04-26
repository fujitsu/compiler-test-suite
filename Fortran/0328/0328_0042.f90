module m
type xdef
sequence
integer:: x=2
end type
end module

use m
type (xdef)::xx
real :: r
r = func (xx,xx)
print * , r , xx%x
print *,'pass'
end

function func(xx,yy) result( r )
use m
type (xdef)::xx
type (xdef)::yy
xx%x = yy%x
r=yy%x
end
