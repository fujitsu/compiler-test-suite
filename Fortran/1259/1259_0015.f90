module m1 
  type t1 
  end type t1 
contains 
  recursive subroutine sub(arg,aa)
    class(*), intent(inout) :: arg 
    integer :: aa
    type(t1) :: x 
!print *,'test sub'
    select type (arg)  
     type is (integer) 
!print *,'test type is'
      if (aa == 1) then 
         aa = 2
         call sub(x,aa)          
      end if
    end select 
  end subroutine sub 
end module m1 

use m1
integer :: aa=1,aaa=1
call sub(aaa,aa)
if (aa /= 2) print *,'err',aa
print *,'pass'
end
