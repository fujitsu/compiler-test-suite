module m1 
  type t1 
  end type t1 
  type,extends(t1):: t2
    integer :: t2_a
  end type t2
contains 
  recursive subroutine sub(arg,aa)
    class(t1), intent(inout) :: arg 
    integer :: aa
    type(t1) :: x 
    select type (arg)  
!    type is (integer) 
!      aa = 2
!      call sub(x,aa)          
    type is (t1)        
     aa=3
    if (1.eq.2) call sub(x,aa)          
    type is (t2)        
print *,'err'
    if (1.eq.2) call sub(x,aa)          
    class DEFAULT
print *,'err'
    if (1.eq.2) call sub(x,aa)          
    end select 
    if (1.eq.2) call sub(x,aa)          
  end subroutine sub 
end module m1 

use m1
class(t1),allocatable :: a
integer :: aa
allocate(a)
aa=1
call sub(a,aa)
if (aa /= 3) print *,'err',aa
print *,'pass'
end
