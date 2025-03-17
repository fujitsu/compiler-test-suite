module m1
contains
function fun() 
integer, allocatable::fun(:)
allocate(fun(3))
fun=(/1,2,3/)
end function
end
use m1
integer r(3)
do i=1,100
r=fun()
if (any(r/=(/1,2,3/)))print *,'error-1'
end do
print *,'pass'
end
