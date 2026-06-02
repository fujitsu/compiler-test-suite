module m1 
  type t1 
  end type t1 
  type t2 
    integer :: t2_a=1
  end type t2 
contains 
  recursive subroutine sub(arg,aa)
    class(*), intent(in),pointer :: arg 
    integer :: aa
    class(*),pointer :: x 
    type(t1) :: xx
    allocate(x,mold=xx)
    select type (arg)  
    type is (t1)        
     aa=3
    type is (t2)        
         aa = 2
         call sub(aa=aa,arg=x)          
    end select 
    if (1.eq.2) call sub(aa=aa,arg=x) ! noerr
  end subroutine sub 
end module m1 

use m1
class(*),pointer :: a
type(t2) :: aaa
integer :: aa
aa=1
allocate(a,mold=aaa)
call sub(a,aa)
if (aa /= 3) print *,'err',aa
print *,'pass'
end
