real :: rr,jj
associate(xx=>fun())
rr = xx(2)%im
jj = xx(3)%re
end associate

if (rr .ne. 3) print*,101
if (jj .ne. 2) print*,102
PRINT*,"PASS"

contains
function fun()
complex :: fun(3) 
fun = (2,3)
end function
end
