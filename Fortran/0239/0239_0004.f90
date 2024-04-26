module mod
integer:: operator=10
interface operator(.add.)
integer function fun(a)
integer,intent(in):: a
end function
end interface
end module

use mod,only:operator
use mod,only:operator(.plus.) => operator(.add.)
if(operator/=10) print *,101
if ((.plus. 2)/= 3) print *,102
print *,'pass' 
end


integer function fun(a)
integer,intent(in):: a
fun=a+1
end function
