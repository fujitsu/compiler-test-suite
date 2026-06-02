module m1
  type t1
  end type t1
  type t2
    integer :: t2_a
  end type t2
contains
  recursive subroutine sub(arg)!,arg2)
    class(* ), intent(in),pointer,optional :: arg!,arg2
    class(* ), pointer:: w!
if (.not.ASSOCIATED(arg)) then
print *,'sngg630t : pass'
else
    select type (arg)
    type is (t2)
      if (arg%t2_a == 1) then
         arg%t2_a = 2
         call sub(arg=null(w  ))
      end if
    end select
endif
  if (1.eq.2)   call sub(arg=null(w  ))
  end subroutine sub
end module m1

use m1
class(* ),pointer :: a
type (t2)        :: b
b%t2_a=1
allocate(a,mold=b)
select type (a)
 type is(t2)
a%t2_a=1
end select
call sub(a)
select type (a)
 type is(t2)
if (a%t2_a /= 2) print *,'err',a%t2_a
end select
end
