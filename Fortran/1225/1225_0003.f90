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
  class(t)::v(:)
  class(t),allocatable::w(:)
     class(q),allocatable::b
if (size(v)/=1) print *,672
allocate(w,mold=v)
if (w(1)%ts/=1) print *,2929
select type (w)
 type is(te)
if (.not.same_type_as(w(1)%ta,b)) print *,29291
if (.not.same_type_as(w(1)%tb,b)) print *,29292
end select
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
     print *,'sngg290t : pass'
     end
