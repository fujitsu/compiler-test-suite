module m1
  type t1
    integer :: t1_a
  end type t1
  type,extends(t1):: t2
    integer :: t2_a =1
  end type t2
contains
  recursive subroutine sub(a1,a2,arg,aa)
    integer ,optional :: a1,a2
    class(* ), intent(inout) ,allocatable:: arg
    class(t1),allocatable :: xxx
    class(* ),allocatable :: x
    integer,optional :: aa
    allocate(xxx)
    allocate(x,mold=xxx)
    select type (arg)
    type is (t2)
      print *,'err' 
      call sub(arg=x,aa=aa)
    type is (t1)
      if (aa == 1) then
         aa = 2
         call sub(arg=x,aa=aa)
      end if
    end select
    if (1.eq.2) call sub(arg=x,aa=aa)
  end subroutine sub
end module m1

use m1
class(* ),allocatable :: a
type (t1) :: xx
integer :: aa,a1=1,a2=2
aa=1
allocate(a,mold=xx)
call sub(a1,a2,a,aa)
if (aa /= 2) print *,'err',aa
print *,'pass'
end
