module m1
integer, target :: var(2)
end module

use m1
interface
        subroutine sub(x)
         integer, intent(inout) :: x
        end subroutine
end interface
        
var=1
f(2) = 100 
call sub(f(2))  
if (var(2) /= 500)print*,101
print *,"Pass"
contains
function f(key) result(res)
   integer, intent(in) :: key
   integer, pointer    :: res
   res=>var(key)
end function
end

subroutine sub(x)
  integer, intent(inout) :: x
  x = x*5    
end subroutine sub
