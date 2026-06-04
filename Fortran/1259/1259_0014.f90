module m1 
  type t1 
  end type t1 
contains 
  recursive subroutine sub(arg)
    class(*), intent(inout) :: arg 
    type(t1) :: x 
!print *,'test sub'
    select type (arg)  
     type is (integer) 
!print *,'test type is'
      call sub(x)          
    end select 
  end subroutine sub 
end module m1 

use m1
integer :: aaa=1
call sub(aaa)
print *,'pass'
end
