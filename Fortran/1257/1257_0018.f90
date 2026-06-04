module m1
  type t1
    integer :: t1_a =3
  end type t1
  type,extends(t1):: t2
    integer :: t2_a
  end type t2
contains
  recursive subroutine sub(arg)
    class(t1), intent(in) ,pointer:: arg
!    class(t1),pointer :: x
    select type (arg)
    type is (t2)
      if (arg%t2_a == 1) then
         print *,'err'
         call sub(x())
      end if
    type is (t1)
      if (arg%t1_a == 1) then
       arg%t1_a =2
       call sub(x())
      end if
    end select
    if (1.eq.2)  call sub(x())
  end subroutine sub
  function x() result(xxx)
  class(t1),pointer :: xxx
  allocate(xxx)
  end
end module m1

use m1
class(t1),pointer :: a
allocate(a)
a%t1_a=1
call sub(a)
if (a%t1_a /= 2) print *,'err',a%t1_a
print *,'pass'
end
