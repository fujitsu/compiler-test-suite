module m1
  integer(8),target::u=1
  type q
     integer(8),pointer::d=>u
  end type

contains
 subroutine s2(v)
  class(q),intent(out)::v(:)
k=0
if (size(v)/=4) print *,672
select type(v)
  type is(q)
  k=1
  do m=1,size(v)
    if (.not.associated(v(m)%d,u)) print *,38233
    if (v(m)%d/=1) print *,38693
  end do
 end select
 if (k/=1) print *,2923
end
end
 subroutine s1
use m1
  class(q),pointer::v(:)
    allocate(v(4))
 call s2(v)
end
call ss()
call s1()
     print *,'sngg271t : pass'
     end
subroutine ss
integer,pointer::x(:)
allocate(x(100))
x=-1
write(31,*) x
end
