module m1 
  type t1 
  end type t1 
  type t2 
    integer :: t2_a
  end type t2 
contains 
  recursive subroutine sub(arg,aa)
    class(t2), intent(inout) :: arg 
    integer :: aa
    type(t2) :: x 
    type(t1) :: xx 
    select type (arg)  
     class DEFAULT
      print *,'err'
      if (aa == 2) then 
         aa = 3
         call sub(x,aa)          
      endif
!     type is (integer) 
   type is (t2)        
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
call sub(a,aa)
if (aa /= 2) print *,'err',aa
print *,'pass'
end
