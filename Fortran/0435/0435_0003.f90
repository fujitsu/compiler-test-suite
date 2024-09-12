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
type y
integer::d
  TYPE(x) :: v,w
end type
type(y)::g

!$omp parallel firstprivate(g)
allocate(g%v% z(1),source=1)
allocate(g%w% z(10),source=-1)
g%v= g%w
if (size(g%v%z)/=10      ) print *,101
if (g%v%z(10)/=-1 ) print *,102
!$omp end parallel
end
  do k=1,30
  call s1
  end do
print *,'pass'
end
