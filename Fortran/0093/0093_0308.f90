type ty
complex :: cc(5)
end type

real :: rr(5),ii(5)

associate(xx=>fun())
rr = xx%cc(2)%im
ii = xx%cc(3)%re
end associate
if ( any(rr .ne. 5.43))print*,101
if ( any(ii .ne. 2.54))print*,102
PRINT*,"PASS"

contains
function fun()
type(ty) :: fun
fun%cc = (2.54,3.5666)
fun%cc(2) = (6.78,5.43)
end function
end
