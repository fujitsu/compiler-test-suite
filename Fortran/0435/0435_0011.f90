MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(2),w(2)
!$omp parallel firstprivate(v,w)
allocate(v(2)% z(1),source=1)
allocate(w(2)% z(10),source=-1)
v= f(w)
if (size(v(2)%z)/=10      ) print *,101
if (v(2)%z(10)/=-1 ) print *,102
!$omp end parallel
end
  do k=1,30
  call s1
  end do
print *,'pass'
end