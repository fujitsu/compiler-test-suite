module m1
  integer(8),target::u=1
  type q
  end type
  type,extends(q)::qe
     integer(8),pointer::d=>u
  end type

contains
 subroutine s2(v)
  class(*),intent(out)::v(:)
k=0
if (size(v)/=4) print *,672
!!select type(v)
!!  type is(qe)
!!  k=1
!!  do m=1,size(v)
!!    if (.not.associated(v(m)%d,u)) print *,38233
!!    if (v(m)%d/=1) print *,38693
!!  end do
!! end select
!! if (k/=1) print *,2923
end
end
 subroutine s1
use m1
  class(*),pointer::v(:)
    allocate(qe::v(4))
select type(v)
  type is(qe)
  k=1
  do m=1,size(v)
    allocate(v(m)%d,source=2_8)
    v(m)%d=11
  end do
 end select
 call s2(v)
end
call ss()
call s1()
     print *,'sngg372t : pass'
     end
subroutine ss
integer,pointer::x(:)
allocate(x(100))
x=-1
write(20,*) x
end
