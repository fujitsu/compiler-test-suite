type ty
complex :: cc
end type

real :: rr,ii

associate(xx=>fun())
rr = xx%cc%re
ii = xx%cc%im
end associate

if (rr .ne. 2.54) print*,101
if (ii .ne. 3.5666) print*,102
PRINT*,"PASS"

contains
function fun()
type(ty) :: fun
fun%cc = (2.54,3.5666)
end function
end
