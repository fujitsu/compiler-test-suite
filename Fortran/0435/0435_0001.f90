MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v,w
!$omp parallel private(v,w)
allocate(v% z(1),source=1)
allocate(w% z(10),source=-1)
v= w
if (size(v%z)/=10      ) print *,101
if (v%z(10)/=-1 ) print *,102
!$omp end parallel
end
  do k=1,30
  call s1
  end do
print *,'pass'
end
