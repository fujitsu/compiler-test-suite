module m1
type base
  integer(8)::x1
end type
type,extends(base):: ext
  integer,allocatable::x2
end type
type z
  integer(8)::z1
  class(ext ),allocatable:: z2
end type
  class(ext ),allocatable:: v
contains
 subroutine s1
   allocate(ext::v)
   v%x1=1
   select type(v)
    type is(ext)
      allocate(v%x2,source=2)
   end select
   call s2( z( 1 , v) )
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
  k=0
  select type (p=>d%z2)
   type is(ext)   
     k=1
     if (p%x1/=1) print *,2001
     if (p%x2/=2) print *,2002
     p%x2=12
   end select
  k=0
  select type(v)
    type is(ext)
     if (v%x2/=2) print *,2012
     k=1
  end select
  if (k/=1) print *,1001
 end
end
use m1
  call s1
  print *,'sngg360p : pass'
end
