module m1
type base
  integer(8)::x1
end type
type,extends(base):: ext
  integer,allocatable::x2
end type
type z
  integer(8)::z1
  type (ext ),allocatable:: z2
end type
contains
function f() result(v)
  type(ext):: v
  !allocate(ext::v)
   v%x1=1
  ! select type(v)
  !  type is(ext)
      allocate(v%x2,source=2)
   !end select
end
 subroutine s1
   !v%x1=1
   !allocate(v%x2,source=2)
   call s2( z( 1 , f()) )
   !if (v%x1/=1) print *,8291
   !if (v%x2/=2) print *,8292
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
  k=0
  !select type (p=>d%z2)
  ! type is(ext)   
     k=1
     if (d%z2%x1/=1) print *,2001
     if (d%z2%x2/=2) print *,2002
     d%z2%x1=11
     d%z2%x2=12
   !end select
   if (k/=1) print *,1001
 end
end
use m1
do n=1,30
  call s1
end do
  print *,'sngg896r : pass'
end
