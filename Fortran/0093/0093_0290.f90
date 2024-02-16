real :: rr,ii
associate(xx=>fun())
 rr = xx%im
 ii = xx%re
end associate
if (rr .ne. 3) print*,101
if (ii .ne. 2) print*,102
PRINT*,"PASS"

contains
function fun()
complex :: fun 
fun = (2,3)
end function
end
