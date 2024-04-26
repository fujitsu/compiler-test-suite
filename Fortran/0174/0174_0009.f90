MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer, ALLOCATABLE :: z2(:)
    integer, ALLOCATABLE :: z3(:)
    integer, ALLOCATABLE :: z4(:)
    integer, ALLOCATABLE :: z5(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z1=d%z1+3
   r%z2=d%z2+3
   r%z3=d%z3+3
   r%z4=d%z4+3
   r%z5=d%z5+3
  END FUNCTION 
END MODULE 
subroutine s2
use  m1
  IMPLICIT NONE
  TYPE(x) :: w
allocate(w% z1(100),source=-1)
allocate(w% z2(100),source=-1)
allocate(w% z3(100),source=-1)
allocate(w% z4(100),source=-1)
allocate(w% z5(100),source=-1)
!$omp parallel firstprivate(w) 
w= f(w)
if (size(w%z1)/=100     ) print *,101
if (size(w%z2)/=100     ) print *,101
if (size(w%z3)/=100     ) print *,101
if (size(w%z4)/=100     ) print *,101
if (size(w%z5)/=100     ) print *,101
if (w%z1(100)/=2 ) print *,102
if (w%z2(100)/=2 ) print *,102
if (w%z3(100)/=2 ) print *,102
if (w%z4(100)/=2 ) print *,102
if (w%z5(100)/=2 ) print *,102
!$omp end parallel
end
  do k=1,10
  call s2
  end do
print *,'pass'
end
