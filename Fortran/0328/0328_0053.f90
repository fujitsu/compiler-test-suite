 module m
 type zdef
  sequence
  integer :: zz(10)=2
 end type
 type xdef
 sequence
  type(zdef) :: z
 end type
end module

use m
type (xdef)::xx
integer :: func,r
r = func (xx,xx)
  print *,'pass'
end

function func(xx,yy) result(r)
use m
integer :: r
type (xdef)::xx
type (xdef)::yy
xx%z%zz(10) = yy%z%zz(10)+1
r=yy%z%zz(10)
end
