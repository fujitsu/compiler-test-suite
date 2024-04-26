module m
type zdef
 sequence
 integer :: zz=2
end type
type xdef
sequence
 type(zdef) ::z
end type
end module

use m
type (xdef)::xx
integer:: r,func
r = func (xx,xx)
  print *,'pass'
end

function func(xx,yy) result( r )
use m
integer :: r
type (xdef)::xx
type (xdef)::yy
xx%z%zz = yy%z%zz+1
r=yy%z%zz
end
