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
  type,extends(t2aa):: t2aaa
    integer :: t2_aaaa =1
  end type t2aaa
contains 
  recursive subroutine sub(arg,aa)
!    class(t2aa), intent(in),allocatable :: arg 
    !class(t1), intent(in),allocatable :: arg 
    !class(t2), intent(in),allocatable :: arg 
    class(t2), intent(in) :: arg 
    integer*8  :: aa
    type(t1) :: x
    type(t2a) :: x2
    type(t2aaa) :: x3
    type(t2),allocatable :: xx 
    class(t2aa) ,allocatable :: xxx,xxx2,xxxp1
    integer(1) ,allocatable :: p1
    allocate(p1)
    allocate(xx)
    allocate(xxx)
    allocate(xxx2)
    allocate(xxxp1)
    select type (arg)  
!    type is (integer(1))
!      aa = aa+100_8
!      call sub(xxx,aa)
    !type is (t1)        
    ! aa=aa+1000_8
    ! call sub(xxx2,aa)
    type is (t2)        
!print *,'test t2'
      aa=aa+10_8
      call sub(x2,aa)
    type is (t2a)        
!print *,'test t2a'
      aa=aa+100_8
      call sub(xxxp1,aa)
    type is (t2aa)        
!print *,'test t2aa'
      aa=aa+1000_8
      call sub(x3,aa)
    class DEFAULT
!print *,'test DEFAULT(t2aaa)'
      aa=aa+10000_8
      if (1.eq.2) call sub(xxxp1,aa)
    end select 
    if (1.eq.2)  call sub(xxxp1,aa) ! notest
    if (1.eq.2)  call sub(xxx2,aa) ! notest
!print *,'test end'
  end subroutine sub 
end module m1 

use m1
class(t2),allocatable :: aaa
type(t2a),allocatable :: a
integer(8) :: aa
aa=1
allocate(a)
allocate(aaa,mold=a)
call sub(aaa,aa)
if (aa /= 11101_8) print *,'err',aa
print *,'pass'
end
