module m1
  type q
     integer(8)::d
  end type
  type,extends(q)::qe
     integer(8),allocatable::qd
  end type
  type t
     integer(8)::d
     integer(8)::d1=1
     integer(8),pointer::d2=>null()
     integer(8),allocatable::d3
     type(q),pointer::d4=>null()
     type(q),allocatable::d5
     class(q),pointer::d6=>null()
     class(q),allocatable::d7
  end type
  type,extends(t)::te
     integer(8)::dx
  end type
contains
 subroutine s2(v)
     class(q),allocatable::g
  class(*),intent(out)::v(:)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(v)
    if (v(m)%d1/=1) print *,38213
    if (associated(v(m)%d2)) print *,38223
    if (allocated(v(m)%d3)) print *,38233
    if (associated(v(m)%d4)) print *,3843
    if (allocated(v(m)%d5)) print *,38253
    if (associated(v(m)%d6)) print *,3863
    if (allocated(v(m)%d7)) print *,38273
    if (.not.same_type_as(g,v(m)%d6)) print *,38683
    if (.not.same_type_as(g,v(m)%d7)) print *,38693
  end do
 end select
 if (k/=1) print *,2923
end
end
 subroutine s1
use m1
     class(q),allocatable::g
     class(qe),allocatable::ge
  class(*),allocatable::v(:)
    allocate(te::v(4))
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(v)
    if (v(m)%d1/=1) print *,3821
    if (associated(v(m)%d2)) print *,3822
    if (allocated(v(m)%d3)) print *,3823
    if (associated(v(m)%d4)) print *,384
    if (allocated(v(m)%d5)) print *,3825
    if (associated(v(m)%d6)) print *,386
    if (allocated(v(m)%d7)) print *,3827
    if (.not.same_type_as(g,v(m)%d6)) print *,3868
    if (.not.same_type_as(g,v(m)%d7)) print *,3869
  end do
 end select
 if (k/=1) print *,292
!
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(v)
    v(m)%d1=11
    allocate(v(m)%d2,source=11_8)
    if (allocated(v(m)%d3)) print *,3823
    allocate(v(m)%d3,source=11_8)
    allocate(v(m)%d4,source=q(11_8))
    allocate(v(m)%d5,source=q(11_8))
    allocate(v(m)%d6,source=qe(11_8,11_8))
    allocate(v(m)%d7,source=qe(11_8,11_8))
    if (.not.same_type_as(ge,v(m)%d6)) print *,35683
    if (.not.same_type_as(ge,v(m)%d7)) print *,38693
  end do
 end select
 if (k/=1) print *,292
 call s2(v)
end
call ss()
call s1()
     print *,'sngg400t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(48,*) x
end
