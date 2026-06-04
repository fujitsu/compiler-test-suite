module m1
type base
  integer(8)::x1
end type
type,extends(base):: ext
  integer,allocatable::x2(:)
end type
type z
  integer(8)::z1
  class(ext ),allocatable:: z2(:)
end type
contains
 subroutine s1
  class(base),allocatable:: v
   allocate(ext::v)
   v%x1=1
   select type(v)
    type is(ext)
      allocate(v%x2(2),source=2)
   call s2( z( 1 ,  [ext(v%x1, v%x2),ext(v%x1, v%x2)]) )
   end select
  k=0
  select type(v)
    type is(ext)
     if (v%x1/=1) print *,2011
if (any(v%x2/=2)) print *,8292
     k=1
  end select
  if (k/=1) print *,1009
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
  k=0
  select type (p=>d%z2)
   type is(ext)   
     k=1
   if (p(1)%x1/=1) print *,2001
     if (any(p(1)%x2/=2)) print *,2002
     p(1)%x1=11
     p(1)%x2=12
     if (p(2)%x1/=1) print *,2001
     if (any(p(2)%x2/=2)) print *,2002
     p(2)%x1=11
     p(2)%x2=12
   end select
  if (k/=1) print *,1001
 end
end
use m1
do n=1,30
  call s1
end do
  print *,'sngg099s : pass'
end
