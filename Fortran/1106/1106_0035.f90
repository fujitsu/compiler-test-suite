module m1
  integer(8),target::u=1
  type q
     integer(8),pointer::d=>u
  end type
  type,extends(q)::qe
     integer(8),pointer::qd=>u
  end type

  type(q),target::gg

  type t
     integer(8)::d
     integer(8),pointer::ts=>u
     class(q),pointer::ta=>gg
  end type
  type,extends(t)::te
     integer(8)::dx
     integer(8),pointer::d1=>u
     class(q),pointer::tb=>gg
  end type
contains
 subroutine s2(v)
     class(q),pointer::g=>NULL()
  class(*),intent(out)::v(:)
k=0
if (size(v)/=4) print *,672
!!select type(v)
!!  type is(te)
!!  k=1
!!  do m=1,size(v)
!!    !if (v(m)%ts/=1) print *,38213
!!    !if (v(m)%d1/=1) print *,38215
!!    if (.not.associated(v(m)%ta)) print *,38233
!!    if (.not.same_type_as(g,v(m)%ta)) print *,38683
!!    if (.not.associated(v(m)%tb)) print *,38273
!!    if (.not.same_type_as(g,v(m)%tb)) print *,38693
!!  end do
!! end select
! if (k/=1) print *,2923
end
end
 subroutine s1
use m1
     class(q),pointer::g=>NULL()
     class(qe),pointer::ge=>NULL()
  class(*),pointer::v(:)
    allocate(te::v(4))
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(v)
    if (v(m)%ts/=1) print *,3821
    if (v(m)%d1/=1) print *,3821
    if (.not.associated(v(m)%ta)) print *,3823
    if (.not.same_type_as(g,v(m)%ta)) print *,3868
    if (.not.associated(v(m)%tb)) print *,3825
    if (.not.same_type_as(g,v(m)%tb)) print *,3869
  end do
 end select
 if (k/=1) print *,292
!
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(v)
    v(m)%ts=11
    v(m)%d1=11
    allocate(v(m)%ta,source=qe(u ,u  ))
    if (.not.same_type_as(ge,v(m)%ta)) print *,35683
    allocate(v(m)%tb,source=qe(u ,u   ))
    if (.not.same_type_as(ge,v(m)%tb)) print *,38693
  end do
 end select
 if (k/=1) print *,292
 call s2(v)
end
call ss()
call s1()
     print *,'sngg376t : pass'
     end
subroutine ss
integer,pointer::x(:)
allocate(x(100))
x=-1
write(24,*) x
end
