type ty
complex :: cc(3)
end type

real :: rr(2),ii(2)

associate(xx=>fun())
rr = xx(2)%cc(2:3)%im
ii = xx(2)%cc(2:3)%re
end associate
if(rr(1) .ne. 3.5666) print*,101
if (rr(2) .ne. 3.87) print*,102
if (ii(1) .ne. 2.54) print*,103
if (ii(2) .ne. 2.67) print*,104
PRINT*,"PASS"

contains
function fun()
type(ty) :: fun(3)
fun= (ty((2,3)))
fun(2)%cc = (2.54,3.5666)
fun%cc(3) = (2.67,3.87)
end function
end
