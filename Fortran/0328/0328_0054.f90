module m
type xdef
sequence
integer,dimension(10):: x=2
real :: r
end type
end module

use m
type (xdef)::xx
r = func (xx,xx)
print * , r , xx%x(10)
print *,'pass'
end

function func(xx,yy) result(r)
use m
type (xdef)::xx
type (xdef)::yy
read *,xx%x(10)
read *,yy%x(10)
r=yy%x(10)
end
