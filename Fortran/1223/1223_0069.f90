 subroutine s1
  type q
     integer(8)::d
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
     integer(8)::e1=1
     integer(8),pointer::e2=>null()
     integer(8),allocatable::e3
     type(q),pointer::e4=>null()
     type(q),allocatable::e5
     class(q),pointer::e6=>null()
     class(q),allocatable::e7
  end type

     class(q),allocatable::g
  class(t),allocatable::v(:),w
    allocate(te::w)
    allocate(   v(4),mold=w)
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
    if (v(m)%e1/=1) print *,38215
    if (associated(v(m)%e2)) print *,38225
    if (allocated(v(m)%e3)) print *,38235
    if (associated(v(m)%e4)) print *,3845
    if (allocated(v(m)%e5)) print *,38255
    if (associated(v(m)%e6)) print *,3865
    if (allocated(v(m)%e7)) print *,38275
    if (.not.same_type_as(g,v(m)%e6)) print *,38685
    if (.not.same_type_as(g,v(m)%e7)) print *,38695
  end do
 end select
 if (k/=1) print *,292
end
do n=1,30
call ss()
call s1()
end do
     print *,'sngg165t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
