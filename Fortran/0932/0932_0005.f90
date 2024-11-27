module m1
procedure(integer), pointer, protected :: p
contains

integer function fun(val)
integer, intent(inout) :: val
fun=val+3
return  
end function fun
subroutine sub
p=>fun
end subroutine
end module

use m1
integer :: x,result1
x=2
call sub
result1 =p(x)
if(result1/=5) print *, 101
print *, "Pass"
end
