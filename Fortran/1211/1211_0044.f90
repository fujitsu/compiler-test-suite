module m1
type base
  integer(8)::x1
end type
type,extends(base):: ext
  integer,allocatable::x2(:)
end type
type z
  integer(8)::z1
  class(base),allocatable:: z2(:)
end type
contains
 subroutine s1(n)
  type(ext):: v(n)
    allocate(v(1)%x2(2),source=2)
   allocate(v(2)%x2(2),source=2)
   call s2( z( 1 , v) )
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
  k=0
  select type (p=>d%z2)
   type is(ext)   
     k=1
 deallocate(p(1)%x2)
     deallocate(p(2)%x2)
   end select
   if (k/=1) print *,1001
 end
end
use m1
do n=1,30
  call s1(2)
end do
  print *,'sngg045s : pass'
end
