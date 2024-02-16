real :: rr(2),ii(2),jj(4)
associate(xx=>fun())
rr = xx(1:2)%im
ii = xx(3:4)%re
jj = xx%RE
end associate
if (any (rr .ne. 3)) print*,101
if (any (ii .ne. 5.67)) print*,102
if (any (jj .ne. [2.0,2.0,5.67,5.67])) print*,103
PRINT*,"PASS"

contains
function fun()
complex :: fun(4) 
fun(1:2) = (2,3)
fun(3:4)   = (5.67,7.54)
end function
end
