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
    integer :: aa
   call isub(arg,aa)
contains
recursive subroutine isub(arga,aaa)
    class(*), intent(inout) :: arga
    integer :: aaa
    type(t1) :: x
    type(t2a) :: x2
    type(t2) :: xx 
    class(*) ,pointer :: xxx
    allocate(xxx,mold=x2)
    select type (arg)  
    type is (integer) 
      aaa = 2
      call sub(x,aaa)          
    type is (t1)        
     aaa=3
    call sub(xx,aaa)          
    type is (t2)        
     aaa=4
     call sub(xxx,aaa)          
    class DEFAULT
     aaa=5
    if (1.eq.2) call sub(x,aaa)          
    end select 
    if (1.eq.2) call sub(x,aaa)          
  end subroutine isub 
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
