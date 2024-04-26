module m
type xdef
sequence
complex:: x=(2,2)
end type
end module

use m
type (xdef)::xx
complex:: r,func
r = func (xx,xx)
print * , r , xx%x
print *,'pass'
end

function func(xx,yy) result( r )
use m
complex :: r
type (xdef)::xx
type (xdef)::yy
xx%x = yy%x
r=yy%x
end
