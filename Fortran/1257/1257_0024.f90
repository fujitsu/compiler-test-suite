module m1 
  type t1 
  end type t1 
  type t2 
    integer :: t2_a
  end type t2 
contains 
  recursive subroutine sub(arg,arg2)
    class(*), intent(inout),optional :: arg 
    class(*), intent(inout),optional :: arg2
    type(t1) :: x 
if (PRESENT(arg)) then
if (PRESENT(arg2)) then
    select type (arg)  
    type is (t2)        
      if (arg%t2_a == 1) then 
         arg%t2_a = 2
         call sub(arg=x)          
         call sub()          
      end if
    end select 
end if
endif
  if (1.eq.2)   call sub(arg=x)          
  if (1.eq.2)   call sub()          
  if (1.eq.2)   call sub(arg,arg2)          
  end subroutine sub 
end module m1 

use m1
type(t2) :: a
a%t2_a=1
call sub(a,a)
if (a%t2_a /= 2) print *,'err',a%t2_a
print *,'pass'
end
