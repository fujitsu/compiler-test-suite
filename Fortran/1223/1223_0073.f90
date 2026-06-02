 subroutine s1
  type r
     integer(8)::z
  end type
  type q
     integer(8)::yd
     integer(8)::y1=1
     integer(8),pointer::y2=>null()
     integer(8),allocatable::y3
     type(r),pointer::y4=>null()
     type(r),allocatable::y5
     class(r),pointer::y6=>null()
     class(r),allocatable::y7
     type(r),allocatable::y9
     class(r),allocatable::ya
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
     type(q)::d8
     type(q),allocatable::d9
     class(q),allocatable::da
  end type
  type,extends(t)::te
     integer(8)::dx
  end type

     class(q),allocatable::g
     class(r),allocatable::gr
  class(t),allocatable::v(:),w(:)
    allocate(te::w(4))
    allocate(   v,mold=w)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(w)
    if (v(m)%d1/=1) print *,3821
    if (associated(v(m)%d2)) print *,3822
    if (allocated(v(m)%d3)) print *,3823
    if (associated(v(m)%d4)) print *,384
    if (allocated(v(m)%d5)) print *,3825
    if (associated(v(m)%d6)) print *,386
    if (.not.same_type_as(g,v(m)%d6)) print *,3868
    if (allocated(v(m)%d7)) print *,3827
    if (.not.same_type_as(g,v(m)%d7)) print *,3869
    if (allocated(v(m)%d9)) print *,3828
    if (allocated(v(m)%da)) print *,3829
    if (.not.same_type_as(g,v(m)%da)) print *,38690
    if (v(m)%d8%y1/=1) print *,38218
    if (associated(v(m)%d8%y2)) print *,38228
    if (allocated(v(m)%d8%y3)) print *,38238
    if (associated(v(m)%d8%y4)) print *,3848
    if (allocated(v(m)%d8%y5)) print *,38258
    if (associated(v(m)%d8%y6)) print *,3868
    if (.not.same_type_as(gr,v(m)%d8%y6)) print *,38688
    if (allocated(v(m)%d8%y7)) print *,38278
    if (.not.same_type_as(gr,v(m)%d8%y7)) print *,38698
    if (allocated(v(m)%d8%y9)) print *,38288
    if (allocated(v(m)%d8%ya)) print *,38298
    if (.not.same_type_as(gr,v(m)%d8%ya)) print *,386908
  end do
 end select
 if (k/=1) print *,292
end
call ss()
call s1()
     print *,'sngg169t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
