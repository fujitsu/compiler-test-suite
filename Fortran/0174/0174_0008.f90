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
subroutine s1(n)
use  m1
  TYPE(x) :: v(n),w(n)
!$omp parallel firstprivate(w,v) 
allocate(v(1)% z(1),source=1)
allocate(w(1)% z(10),source=-1)
allocate(v(2)% z(1),source=2)
allocate(w(2)% z(10),source=-2)
allocate(v(3)% z(1),source=3)
allocate(w(3)% z(10),source=-3)
w(2:3)= w(1:2)
if (size(w(1)%z)/=10      ) print *,101
if (w(1)%z(10)/=-1 ) print *,1024
if (size(w(2)%z)/=10      ) print *,101
if (w(2)%z(10)/=-1 ) print *,102
if (size(w(3)%z)/=10      ) print *,101
if (w(3)%z(10)/=-2 ) print *,1026
!$omp end parallel
end
subroutine s2(n)
use  m1
  TYPE(x) :: v(n),w(n)
!$omp parallel firstprivate(w,v) 
allocate(v(1)% z(1),source=1)
allocate(w(1)% z(10),source=-2)
allocate(v(2)% z(1),source=1)
allocate(w(2)% z(10),source=-3)
allocate(v(3)% z(1),source=1)
allocate(w(3)% z(10),source=-4)
w(2:3)= f(w(1:2))
if (size(w(1)%z)/=10      ) print *,101
if (w(1)%z(10)/= -2) print *,1021
if (size(w(2)%z)/=10      ) print *,101
if (w(2)%z(10)/= 1 ) print *,1022
if (size(w(3)%z)/=10      ) print *,101
if (w(3)%z(10)/= 0 ) print *,1023
!$omp end parallel
end
  do k=1,1
  call s1(3)
  call s2(3)
  end do
print *,'pass'
end
