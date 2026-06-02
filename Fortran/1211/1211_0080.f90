module m1
type base
  integer,allocatable::x1(:)
end type
type,extends(base):: ext
  integer,allocatable::x2(:)
end type
type z
  integer(8)::z1
  class(base),allocatable:: z2(:)
end type
contains
function f() result(v)
  class(base),allocatable:: v(:)
  allocate(ext::v(2))
   select type(v)
    type is(ext)
  allocate(v(1)%x1(2),source=1)
   allocate(v(2)%x1(2),source=1)
  allocate(v(1)%x2(2),source=2)
   allocate(v(2)%x2(2),source=2)
   end select
end
 subroutine s1
   call s2( z( 1 , f()) )
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
  k=0
  select type (p=>d%z2)
   type is(ext)   
     k=1
    if (any(p(1)%x1/=1)) print *,2001
     if (any(p(1)%x2/=2)) print *,2002
     if (any(p(2)%x1/=1)) print *,2001
     if (any(p(2)%x2/=2)) print *,2002
     p(1)%x2=12
     p(2)%x2=12
     p(1)%x1=11
     p(2)%x1=11
    deallocate(p(1)%x2)
        deallocate(p(1)%x1)
    deallocate(p(2)%x2)
        deallocate(p(2)%x1)
   end select
  if (k/=1) print *,1001
 end
end
use m1
do n=1,30
  call s1
end do
  print *,'sngg081s : pass'
end
