module m1 
  type t1 
  end type t1 
  type,extends(t1):: t2
    integer :: t2_a =1
  end type t2
  type,extends(t2):: t2a
    integer :: t2_aa =1
  end type t2a
contains 
  recursive subroutine sub(arg,aa)
    class(*), intent(inout) :: arg 
    integer :: aa
    type(t1) :: x 
    type(t2a) :: x2
    type(t2) :: xx 
    class(*) ,pointer :: xxx
    allocate(xxx,mold=x2)
    select type (arg)  
    type is (integer) 
      aa = 2
      call sub(x,aa)          
    type is (t1)        
     aa=3
    call sub(xx,aa)          
    type is (t2)        
     aa=4
     call sub(xxx,aa)          
    class DEFAULT
     aa=5
    if (1.eq.2) call sub(x,aa)          
    end select 
    if (1.eq.2) call sub(x,aa)          
  end subroutine sub 
end module m1 

use m1
type(t2) :: a
integer :: aa,aaa=1
aa=1
call sub(aaa,aa)
if (aa /= 5) print *,'err',aa
print *,'pass'
end
