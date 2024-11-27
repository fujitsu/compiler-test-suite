module m1
contains 
 
 real*8 function fun(val)
 real, intent(inout) :: val
 fun=val+10.0
 return  
end function fun
end module

module m2
use m1
procedure(real*8), pointer, protected :: p
contains
subroutine sub
 p=>fun
end subroutine
end module

use m1
use m2
real :: x,result
x=20.0
call sub
result =p(x)
if(result/=30.0) print *, 101
print *, "Pass"
end
