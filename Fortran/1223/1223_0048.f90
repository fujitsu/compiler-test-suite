 subroutine s1
  type q
     integer(8)::d
  end type
  type t
     integer(8)::d
  end type
  type,extends(t)::te
     integer(8)::dx
     integer(8)::d1=1
     integer(8),pointer::d2=>null()
     integer(8),allocatable::d3
     type(q),pointer::d4=>null()
     type(q),allocatable::d5
     class(q),pointer::d6=>null()
     class(q),allocatable::d7
  end type

     class(q),allocatable::g
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
    if (allocated(v(m)%d7)) print *,3827
    if (.not.same_type_as(g,v(m)%d6)) print *,3868
    if (.not.same_type_as(g,v(m)%d7)) print *,3869
  end do
 end select
 if (k/=1) print *,292
end
call ss()
call s1()
     print *,'sngg144t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
