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
  TYPE(x) :: v(1),w(1)
!$omp parallel private(v,w)
allocate(v(1)% z(1),source=1)
allocate(w(1)% z(10),source=-1)
v= f(  v )
if (v(1)%z(1)/=2 ) print *,101
!$omp end parallel
end
  do k=1,10
  call s1
  end do
print *,'pass'
end
