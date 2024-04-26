MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer, ALLOCATABLE :: z2(:)
    integer, ALLOCATABLE :: z3
    integer              :: z4(1)
    integer, ALLOCATABLE :: z5(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z1=d%z1+1
   r%z2=d%z2+1
   r%z3=d%z3+1
   r%z4=d%z4+1
   r%z5=d%z5+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(1)
!$omp parallel private(v)
allocate(v(1)% z1(1),source=1)
allocate(v(1)% z2(1),source=1)
allocate(v(1)% z3   ,source=1)
v(1)% z4  =1
allocate(v(1)% z5(1),source=1)
v= f(  v )
if (v(1)%z1(1)/=2 ) print *,101
if (v(1)%z2(1)/=2 ) print *,101
if (v(1)%z3   /=2 ) print *,101
if (v(1)%z4(1)/=2 ) print *,101
if (v(1)%z5(1)/=2 ) print *,101
!$omp end parallel
end
  do k=1,10
  call s1
  end do
print *,'pass'
end
