module m1
contains 
 
 function fun(val)
 real, intent(inout) :: val
 real*8 :: fun
 fun=val+10.0
 end function fun
end module

module m2
use m1
procedure(real*8), pointer, protected :: p
procedure(integer), pointer, protected :: prc
contains
subroutine sub
 p=>fun
 prc=>fun2
end subroutine

 integer function fun2(value)
 integer, intent(inout) :: value
 fun2=value+20
 return  
end function fun2
end module

use m2
real :: x,result
integer :: int_res
x=20.0
call sub
result =p(x)
        if(result/=30.0) print *, 101
int_res= prc(20)
        if(int_res/=40) print *, 102
print *, "Pass"
end
