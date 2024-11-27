
module m 
contains 
 subroutine sub(arg) 
  interface 
    function arg() 
       type ty1 
          integer :: iii
       end type
    type(ty1) :: arg
    end function
  end interface
 end subroutine
end module

use m
 end
