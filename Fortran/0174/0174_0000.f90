MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+3
  END FUNCTION
END MODULE
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v,w
allocate(w% z(10),source=-1)
!$omp parallel firstprivate(w,v)
v= w
if (size(v%z)/=10      ) print *,101
if (v%z(10)/=-1 ) print *,102
!$omp end parallel
end
subroutine s2
use  m1
  IMPLICIT NONE
  TYPE(x) :: v,w
allocate(w% z(10),source=-1)
!$omp parallel firstprivate(w,v)
v= f(w)
if (size(v%z)/=10      ) print *,1101
if (v%z(10)/= 2 ) print *,1102
!$omp end parallel
end
  do k=1,10
  call s1
  call s2
  end do
print *,'pass'
end
