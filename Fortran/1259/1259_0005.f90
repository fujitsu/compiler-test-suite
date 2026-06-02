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
    class(*), intent(in),pointer :: arg 
    integer*8  :: aa
    type(t1) :: x
    type(t2a) :: x2
    type(t2),pointer :: xx 
    class(*) ,pointer :: xxx,xxx2,xxxp1
    integer(1) ,pointer :: p1
    allocate(p1)
    allocate(xx)
    allocate(xxx,mold=x)
    allocate(xxx2,mold=xx)
    allocate(xxxp1,mold=p1)
    select type (arg)  
    type is (integer(1))
      aa = aa+100_8
      call sub(xxx,aa)
    type is (t1)        
     aa=aa+1000_8
     call sub(xxx2,aa)
    type is (t2)        
    class DEFAULT
      aa=aa+10_8
      call sub(xxxp1,aa)
    end select 
  end subroutine sub 
end module m1 

use m1
class(*),pointer :: aaa
type(t2a),pointer :: a
integer(8) :: aa
aa=1
allocate(a)
allocate(aaa,mold=a)
call sub(aaa,aa)
if (aa /= 1111_8) print *,'err',aa
print *,'pass'
end
