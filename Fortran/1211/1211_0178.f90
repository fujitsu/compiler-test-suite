module m1

type z
  integer(8)::z1
  integer,allocatable::r2
end type
contains
 subroutine s1
   call s2( z( 1 ) )
  end
 subroutine s2(d)
  type(z):: d
  if (allocated(d%r2)) print *,9282
 end
end
use m1
  call s1
  print *,'sngg179s : pass'
end
