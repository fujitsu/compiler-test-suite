type ty
complex :: cc(3)
end type

real :: rr,ii

associate(xx=>fun())
rr = xx%cc(3)%im
ii = xx%cc(2)%re
end associate
if ( rr .ne. 3.5666) print*,101
if ( ii .ne. 2.54) print*,102
PRINT*,"PASS"

contains
function fun()
type(ty) :: fun
fun%cc = (2.54,3.5666)
end function
end
