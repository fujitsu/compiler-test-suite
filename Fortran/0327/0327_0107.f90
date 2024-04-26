module m
type zdef
 sequence
 integer :: zz=2
end type

type xdef
sequence
type (zdef),dimension(10):: x
type (zdef),dimension(10):: y
end type
end module
use m
type (xdef)::xx(5),yy(5)
integer :: r,func
r = func (xx,yy)
  print *,'pass'
end

function func(xx,yy) result( r )
use m
integer :: r
type (xdef)::xx(5)
type (xdef)::yy(5)
xx(5)%x(10)%zz = xx(5)%x(10)%zz+1+yy(5)%y(10)%zz
r=yy(5)%x(10)%zz
end
