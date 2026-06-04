module m1
type z
  integer(8)::z1
  integer,allocatable::x2(:)
end type
contains
 subroutine s1
  integer    ,allocatable:: v(:)
   allocate(v(2),source=2)
   call s2( z( 1 , v) )
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
     if (d%x2(2)/=2) print *,2002
      write(17,'(z16.16)') loc(d%x2)
 end
end
use m1
  call s1
  print *,'sngg356r : pass'
end
