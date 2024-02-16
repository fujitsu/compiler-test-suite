type ty
complex :: cc(3)
end type

real :: rr,ii

associate(xx=>fun())
rr = xx(2)%cc(3)%im
ii = xx(2)%cc(2)%re
end associate
if ( rr .ne. 3.87) print*,"101"
if ( ii .ne. 2.54) print*, "102"
PRINT*,"PASS"
contains
function fun()
type(ty) :: fun(3)
fun= (ty((2,3)))
fun(2)%cc = (2.54,3.5666)
fun%cc(3) = (2.67,3.87)
end function
end
