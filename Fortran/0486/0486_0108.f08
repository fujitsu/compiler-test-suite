MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z0
    integer, ALLOCATABLE :: z1(:)
    integer, ALLOCATABLE :: z2(:)
    integer, ALLOCATABLE :: z3(:)
    integer, ALLOCATABLE :: z4(:)
    integer, ALLOCATABLE :: z5(:)
  END TYPE
CONTAINS
  FUNCTION fx( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d(:)
    TYPE(x) :: r(size(d))
   r=d
   do k=1,size(r)
   r(k)%z1=d(k)%z1+3
   r(k)%z2=d(k)%z2+3
   r(k)%z3=d(k)%z3+3
   r(k)%z4=d(k)%z4+3
   r(k)%z5=d(k)%z5+3
    end do
  END FUNCTION
elemental   FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d 
   r%z0=d%z0+3
   r%z1=d%z1+3
   r%z2=d%z2+3
   r%z3=d%z3+3
   r%z4=d%z4+3
   r%z5=d%z5+3
  END FUNCTION 
END MODULE 

subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v,w
  allocatable:: v
allocate(w% z0    ,source=-1)
allocate(w% z1(10),source=-1)
allocate(w% z2(10),source=-1)
allocate(w% z3(10),source=-1)
allocate(w% z4(10),source=-1)
allocate(w% z5(10),source=-1)
v= w
if (size(v%z1)/=10      ) print *,101
if (v%z0    /=-1 ) print *,1021
if (v%z1(10)/=-1 ) print *,1022
if (v%z2(10)/=-1 ) print *,1023
if (v%z3(10)/=-1 ) print *,1024
if (v%z4(10)/=-1 ) print *,1025
if (v%z5(10)/=-1 ) print *,1026
end
subroutine s2
use  m1
  IMPLICIT NONE
  TYPE(x) :: v,w
  allocatable:: v
allocate(w% z0    ,source=-1)
allocate(w% z1(10),source=-1)
allocate(w% z2(10),source=-1)
allocate(w% z3(10),source=-1)
allocate(w% z4(10),source=-1)
allocate(w% z5(10),source=-1)
v= f(w)
if (size(v%z1)/=10      ) print *,101
if (v%z0    /=2 ) print *,1021
if (v%z1(10)/=2 ) print *,1022
if (v%z2(10)/=2 ) print *,1023
if (v%z3(10)/=2 ) print *,1024
if (v%z4(10)/=2 ) print *,1025
if (v%z5(10)/=2 ) print *,1026
end
  do k=1,10
  call s1
  call s2
  end do
print *,'pass'
end
