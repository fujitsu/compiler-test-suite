module m1
  type q
     integer(8)::d
  end type
  type,extends(q)::qe
     integer(8),allocatable::qd
  end type
  type t
     integer(8)::d
     integer(8)::ts=1
     class(q),allocatable::ta
  end type
  type,extends(t)::te
     integer(8)::dx
     integer(8)::d1
     class(q),allocatable::tb
  end type
contains
 subroutine s2(v)
     class(q),allocatable::g
  class(t),allocatable::v(:)
if (size(v)/=1) print *,672
deallocate(v)
end
end
 subroutine s1
use m1
  class(t),allocatable::v(:)
    allocate(te::v(1))
!
 call s2(v)
end
call s1()
     print *,'sngg291t : pass'
     end
