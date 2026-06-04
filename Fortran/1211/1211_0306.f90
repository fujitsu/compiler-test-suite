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
  type (ext ),allocatable:: v
   allocate(ext::v)
      allocate(v%x1,source=1)
      allocate(v%x2,source=2)
     if (v%x1/=1) print *,3011,v%x1
   call s2( z( 1 , v) )
     if (v%x1/=1) print *,2011,v%x1
     if (v%x2/=2) print *,2012
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
  k=0
  select type (p=>d%z2)
   type is(ext)   
     k=1
     if (p%x1/=1) print *,2001,p%x1
     if (p%x2/=2) print *,2002
     deallocate(p%x2)
     deallocate(p%x1)
   end select
  if (k/=1) print *,1001
 end
end
use m1
do n=1,30
  call s1
end do
  print *,'sngg938r : pass'
end
