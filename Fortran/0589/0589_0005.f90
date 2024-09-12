module m1
integer, target :: var(2)
end module

use m1
interface
        function fun(x)
         integer, intent(out) :: x
         integer::fun
        end function
end interface
        
var=1
f(2) = 100 
if( fun(f(2))  /= 500 ) print *,100
if (var(2) /= 500)print*,101
print *,"Pass"
contains
function f(key) result(res)
   integer, intent(in) :: key
   integer, pointer    :: res
   res=>var(key)
end function
end

function fun(x)
  integer, intent(out) :: x
  integer::fun
  x = 500    
  fun = x
end function
