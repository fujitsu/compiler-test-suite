module m
type xdef
sequence
complex,dimension(10):: x=(2,2)
complex,dimension(10):: y=(3,3)
end type
end module
use m
type (xdef)::xx(5)
complex :: r,func
r = func (xx,xx)
print * , r , xx(5)%x(10)
print *,'pass'
end

function func(xx,yy) result( r )
use m
complex :: r
type (xdef)::xx(5)
type (xdef)::yy(5)
xx(5)%x(10) = yy(5)%x(10)
r=yy(5)%x(10)
end
