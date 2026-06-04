module m1
  type t1
  end type t1
  type t2
    integer :: t2_a
  end type t2
contains
  recursive subroutine sub(arg)!,arg2)
    class(t2), intent(in),pointer,optional :: arg!,arg2
if (.not.ASSOCIATED(arg)) then
print *,'pass'
else
    select type (arg)
    type is (t2)
      if (arg%t2_a == 1) then
         arg%t2_a = 2
         call sub(arg=null())
      end if
    end select
endif
  if (1.eq.2)   call sub(arg=null())
  end subroutine sub
end module m1

use m1
class(t2),pointer :: a
type (t2)        :: b
b%t2_a=1
allocate(a,mold=b)
a%t2_a=1
call sub(a)
if (a%t2_a /= 2) print *,'err',a%t2_a
end
