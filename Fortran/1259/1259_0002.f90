module m1 
  type t1a 
  end type t1a
  type t1 
  end type t1 
  type,extends(t1):: t2
    integer :: t2_a =1
  end type t2
  type,extends(t2):: t2a
    integer :: t2_aa =1
  end type t2a
  type,extends(t2a):: t2aa
    integer :: t2_aaa =1
  end type t2aa
contains 
  recursive subroutine sub(arg,aa)
    class(*), intent(inout) :: arg 
    integer(4) :: aa
    real :: rrr=1.0
    type(t1) :: x
    type(t2a) :: x2
    type(t2aa) :: x3
    type(t2) :: xx 
    class(*) ,pointer :: xxx
    select type (arg)  
    type is (integer(4)) 
      aa = aa+10
      call sub(x,aa)          
    type is (t1)        
     aa=aa+100
    call sub(xx,aa)          
    type is (t2)        
     aa=aa+1000
     allocate(xxx,mold=x2)
     call sub(xxx,aa)          
    type is (t2a)        
     aa=aa+100000
     allocate(xxx,mold=x3)
     call sub(xxx ,aa)          
    class is (t2aa)        
     aa=aa+1000000
     allocate(xxx,mold=rrr)
     call sub(xxx,aa)          
    class DEFAULT
     aa=aa+10000
    if (1.eq.2) then
       call sub(x,aa)          
    endif
    end select 
    if (1.eq.2) then
       call sub(x,aa)          
    endif
  end subroutine sub 
end module m1 

use m1
!type(t2) :: a
integer(4) :: aa,aaa=1
aa=1
call sub(aaa,aa)
if (aa /= 1111111) print *,'err',aa
print *,'pass'
end
