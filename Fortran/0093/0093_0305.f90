real :: rr(3),ii(3)
associate(xx=>fun())
rr = xx%im
ii = xx%re
end associate

if (any(rr .ne. 3)) print*,101
if (any(ii .ne. 2)) print*,102
PRINT*,"PASS"

contains
function fun()
complex :: fun(3) 
fun = (2,3)
end function
end
