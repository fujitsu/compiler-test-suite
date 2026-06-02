module m1 
  type t1 
  end type t1 
  type t2 
    integer :: t2_a
  end type t2 
contains 
  recursive subroutine sub(arg)
    class(*), intent(inout) :: arg 
    type(t1) :: x 
    select type (arg)  
    type is (t2)        
      if (arg%t2_a == 1) then 
         arg%t2_a = 2
         call sub(x)          
      end if
    end select 
  end subroutine sub 
end module m1 

use m1
type(t2) :: a
a%t2_a=1
call sub(a)
if (a%t2_a /= 2) print *,'err',a%t2_a
print *,'pass'
end
