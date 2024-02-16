type ty
complex :: cc(5)
end type

real :: rr(5),ii(5)

associate(xx=>fun())
rr = xx%cc%im
ii = xx%cc%re
end associate
if (any(rr .ne. 3.5666)) print*,101
if (any(ii .ne. 2.54)) print*,102
PRINT*,"PASS"

contains
function fun()
type(ty) :: fun
fun%cc = (2.54,3.5666)
end function
end
