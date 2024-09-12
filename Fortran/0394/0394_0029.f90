module m1
 type x
   integer::z=2
 end type
contains
subroutine ss1(p1)
 type(x):: p1
  call chk( p1,1 )
!$omp parallel private(p1)
  call chk( p1,2 )
!$omp end parallel
end subroutine
subroutine chk(xx,k)
type(x)::xx
if (xx%z  /= 2) print *,117,k 
end subroutine
end
use m1
type(x)::xx
call ss1(xx)
print *,'pass'
end
