module m1
type base
  integer::x1
end type
type,extends(base):: ext
  integer,allocatable::x2
end type
type z
  integer(8)::z1
  class(base),allocatable:: z2
end type
  type (ext ):: v
contains
 subroutine s1
      v%x1=2
      allocate(v%x2,source=2)
   call s2( z( 1 , v) )
  k=0
     if (v%x1/=2) print *,2011
     if (v%x2/=2) print *,2012
     k=1
  end
 subroutine s2(d)
  type(z):: d
  k=0
  select type (p=>d%z2)
   type is(ext)   
     k=1
     if (p%x1/=2) print *,2001
     if (p%x2/=2) print *,2002
     p%x1=11
     p%x2=12
   end select
  if (k/=1) print *,1001
 end
end
use m1
  call s1
  print *,'sngg578t : pass'
end
