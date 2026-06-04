module m1
  type q
     integer(8)::d
  end type
end
 subroutine s1
use m1
  type t
     integer(8)::d
  end type
  type,extends(t)::te
     integer(8)::dx
     class(q),pointer::d6=>null()
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
    if (.not.same_type_as(g,v(m)%d6)) print *,3868
  end do
 end select
 if (k/=1) print *,292
end
call ss()
call s1()
     print *,'sngg175t : pass'
     end
  subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
