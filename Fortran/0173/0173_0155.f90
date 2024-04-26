MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
type y
  integer::yy=0
  TYPE(x) :: v(1),w(1)
end type
type(y):: q
!$omp parallel private(q)
allocate(q%v(1)% z(1),source=1)
allocate(q%w(1)% z(10),source=-1)
q%w=  q%v 
if (q%w(1)%z(1)/=1 ) print *,101
!$omp end parallel
end
do k=1,10
call s1
end do
print *,'pass'
end
