module m1
type base
  integer,allocatable::x1
end type
type,extends(base):: ext
  integer,allocatable::x2
end type
type z
  integer(8)::z1
  class(base),allocatable:: z2
end type
contains
 subroutine s1
  type (ext ):: v
      allocate(v%x1,source=1)
      allocate(v%x2,source=2)
   call s2( z( 1 , v) )
     if (v%x1/=1) print *,2011
     if (v%x2/=2) print *,2012
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
     p%x1=11
   end select
  if (k/=1) print *,1001
 end
end
use m1
do n=1,30
  call s1
end do
  print *,'sngg885r : pass'
end
