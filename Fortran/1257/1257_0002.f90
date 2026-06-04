module m1 
  type t1 
  end type t1 
  type t2 
    integer :: t2_a
  end type t2 
contains 
  recursive subroutine sub(arg,aa)
    class(*), intent(inout) :: arg 
    integer :: aa
    type(t1) :: x 
    select type (arg)  
!    type is (t2)        
     class DEFAULT
      if (aa == 1) then 
         aa = 2
         call sub(x,aa)          
      end if
    end select 
    if (1.eq.2) call sub(x,aa)          
  end subroutine sub 
end module m1 

use m1
type(t2) :: a
integer :: aa
aa=1
a%t2_a=1
call sub(a,aa)
if (aa /= 2) print *,'err',a%t2_a
print *,'pass'
end
