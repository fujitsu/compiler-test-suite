module m1
  type t1
  end type t1
!  type,extends(t1):: t2
  type t2
    integer :: t2_a=1
  end type t2
contains
  recursive subroutine sub(arg)
    class(* ), intent(inout) ,pointer:: arg
    class(* ),pointer :: x
    allocate(t2::x)
    select type (x)
    type is (t2)
     x%t2_a = 2
    end select
    select type (arg)
    type is (t2)
      if (arg%t2_a == 1) then
         arg%t2_a = 2
         call sub(x)
      end if
    end select
    if (1.eq.2)      call sub(x)
  end subroutine sub
end module m1

use m1
type(t2),pointer :: a
class(*),pointer :: aa
allocate(a)
allocate(aa,mold=a)
call sub(aa)
select type (aa)
type is (t2)
if (aa%t2_a /= 2) print *,'err',aa%t2_a
end select
print *,'pass'
end
