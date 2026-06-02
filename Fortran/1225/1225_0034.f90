module m1
  type q
     integer(8)::d
  end type
  type,extends(q)::qe
     integer(8),allocatable::qd
  end type
  type t
     class(q),pointer    ::qa=>null()
     integer(8)::d
     integer(8)::ts=1
     class(q),allocatable::ta
     class(q),pointer    ::pa=>null()
  end type
  type,extends(t)::te
!   class(q),pointer    ::qb=>null()
     integer(8)::dx
 !   integer(8)::d1=1
 !   class(q),allocatable::tb
 !   class(q),pointer    ::pb=>null()
  end type
contains
 subroutine s2(w)
     class(q),allocatable::g
  class(t),optional::w(:)
  class(t),allocatable::v(:)
if (present(w)) then
  allocate(v,mold=w)
k=0
if (size(v)/=4) print *,672
select type(v)
  type is(te)
  k=1
  do m=1,size(v)
    if (v(m)%ts/=1) print *,38213
!   if (v(m)%d1/=1) print *,38215
     if (allocated(v(m)%ta)) print *,38233
     if (.not.same_type_as(g,v(m)%ta)) print *,38683
!   if (allocated(v(m)%tb)) print *,38273
!   if (.not.same_type_as(g,v(m)%tb)) print *,38693
     if (associated(v(m)%pa)) print *,382335
     if (.not.same_type_as(g,v(m)%pa)) print *,58683
 !  if (associated(v(m)%pb)) print *,382736
 !  if (.not.same_type_as(g,v(m)%pb)) print *,586931
    if (associated(v(m)%qa)) print *,3823351
     if (.not.same_type_as(g,v(m)%qa)) print *,586831
  ! if (associated(v(m)%qb)) print *,3827361
  ! if (.not.same_type_as(g,v(m)%qb)) print *,586931
  end do
 end select
 if (k/=1) print *,2923
end if
end
end
 subroutine s1
use m1
     class(q),allocatable::g
     class(qe),allocatable::ge
  class(t),allocatable::v(:)
    allocate(te::v(4))
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(v)
!    if (v(m)%ts/=1) print *,3821
!    if (v(m)%d1/=1) print *,3821
!    if (allocated(v(m)%ta)) print *,3823
!    if (.not.same_type_as(g,v(m)%ta)) print *,3868
!    if (allocated(v(m)%tb)) print *,3825
!    if (.not.same_type_as(g,v(m)%tb)) print *,3869
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
!    v(m)%d1=11
!    allocate(v(m)%ta,source=qe(10,11_8))
!    if (.not.same_type_as(ge,v(m)%ta)) print *,35683
!    allocate(v(m)%tb,source=qe(10,11_8))
!    if (.not.same_type_as(ge,v(m)%tb)) print *,38693
  end do
 end select
 if (k/=1) print *,292
 call s2(v)
 call s2( )
end
call ss()
call s1()
     print *,'sngg321t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(31,*) x
end
