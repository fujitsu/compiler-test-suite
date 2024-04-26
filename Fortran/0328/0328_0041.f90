module m
type xdef
sequence
character:: x='2'
end type
end module

use m
type (xdef)::xx
character:: r,func
r = func (xx,xx)
print * , r , xx%x
print *,'pass'
end

function func(xx,yy) result( r )
use m
type (xdef)::xx
type (xdef)::yy
character :: r
xx%x = yy%x
r=yy%x
end
