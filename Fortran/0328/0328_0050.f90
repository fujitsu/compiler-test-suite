module m
type xdef
sequence
complex,dimension(10):: x=(2,2)
complex :: r
end type
end module

use m
type (xdef)::xx
complex :: r,func
r = func (xx,xx)
print * , r , xx%x(10)
print *,'pass'
end

function func(xx,yy) result(r)
use m
complex :: r
type (xdef)::xx
type (xdef)::yy
xx%x(10) = yy%x(10)
r=yy%x(10)
end
