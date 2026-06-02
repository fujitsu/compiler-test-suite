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
!     integer(8),pointer::d2=>null()
!     integer(8),allocatable::d3
!     type(q),pointer::d4=>null()
!     type(q),allocatable::d5
!     class(q),pointer::d6=>null()
      class(q),allocatable::d7
  end type
  type,extends(t)::te
     integer(8)::dx
     integer(8)::e1=1
     integer(8),pointer::e2=>null()
     integer(8),allocatable::e3
     type(q),pointer::e4=>null()
     type(q),allocatable::e5
     class(q),pointer::e6=>null()
     class(q),allocatable::e7
  end type
contains
 subroutine s2(v)
     class(q),allocatable::g
  class(t),intent(out)::v(:)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(v)
    if (v(m)%d1/=1) print *,38213
!    if (associated(v(m)%d2)) print *,38223
!    if (allocated(v(m)%d3)) print *,38233
!    if (associated(v(m)%d4)) print *,3843
!    if (allocated(v(m)%d5)) print *,38253
!    if (associated(v(m)%d6)) print *,3863
     if (allocated(v(m)%d7)) print *,38273
!    if (.not.same_type_as(g,v(m)%d6)) print *,38683
     if (.not.same_type_as(g,v(m)%d7)) print *,38693
    if (v(m)%e1/=1) print *,382135
    if (associated(v(m)%e2)) print *,382235
    if (allocated(v(m)%e3)) print *,382335
    if (associated(v(m)%e4)) print *,38435
    if (allocated(v(m)%e5)) print *,382535
    if (associated(v(m)%e6)) print *,38635
    if (allocated(v(m)%e7)) print *,382735
    if (.not.same_type_as(g,v(m)%e6)) print *,386835
    if (.not.same_type_as(g,v(m)%e7)) print *,386935
  end do
 end select
 if (k/=1) print *,2923
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
    if (v(m)%d1/=1) print *,3821
!    if (associated(v(m)%d2)) print *,3822
!    if (allocated(v(m)%d3)) print *,3823
!    if (associated(v(m)%d4)) print *,384
!    if (allocated(v(m)%d5)) print *,3825
!    if (associated(v(m)%d6)) print *,386
     if (allocated(v(m)%d7)) print *,3827
!    if (.not.same_type_as(g,v(m)%d6)) print *,3868
     if (.not.same_type_as(g,v(m)%d7)) print *,3869
    if (v(m)%e1/=1) print *,38218
    if (associated(v(m)%e2)) print *,38228
    if (allocated(v(m)%e3)) print *,38238
    if (associated(v(m)%e4)) print *,3848
    if (allocated(v(m)%e5)) print *,38258
    if (associated(v(m)%e6)) print *,3868
    if (allocated(v(m)%e7)) print *,38278
    if (.not.same_type_as(g,v(m)%e6)) print *,38688
    if (.not.same_type_as(g,v(m)%e7)) print *,38698
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
!    allocate(v(m)%d2,source=11_8)
!    if (allocated(v(m)%d3)) print *,3823
!    allocate(v(m)%d3,source=11_8)
!    allocate(v(m)%d4,source=q(11_8))
!    allocate(v(m)%d5,source=q(11_8))
!    allocate(v(m)%d6,source=qe(11_8,11_8))
     allocate(v(m)%d7,source=qe(11_8,11_8))
!    if (.not.same_type_as(ge,v(m)%d6)) print *,35683
     if (.not.same_type_as(ge,v(m)%d7)) print *,38693
    v(m)%e1=11
    allocate(v(m)%e2,source=11_8)
    if (allocated(v(m)%e3)) print *,38231
    allocate(v(m)%e3,source=11_8)
    allocate(v(m)%e4,source=q(11_8))
    allocate(v(m)%e5,source=q(11_8))
    allocate(v(m)%e6,source=qe(11_8,11_8))
    allocate(v(m)%e7,source=qe(11_8,11_8))
    if (.not.same_type_as(ge,v(m)%e6)) print *,356831
    if (.not.same_type_as(ge,v(m)%e7)) print *,386931
  end do
 end select
 if (k/=1) print *,292
 call s2(v)
end
call ss()
call s1()
     print *,'sngg199t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(18,*) x
end
