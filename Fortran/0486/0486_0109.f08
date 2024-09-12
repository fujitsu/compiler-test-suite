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
   r(k)%z0=d(k)%z0+3
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
  TYPE(x) :: v(:),w(3)
  allocatable:: v
do k=1,3
allocate(w(k)% z0    ,source=-1)
allocate(w(k)% z1(10),source=-1)
allocate(w(k)% z2(10),source=-1)
allocate(w(k)% z3(10),source=-1)
allocate(w(k)% z4(10),source=-1)
allocate(w(k)% z5(10),source=-1)
end do
v= w
if (size(v)/=3      ) print *,111
do k=1,3
if (size(v(k)%z1)/=10      ) print *,101
if (v(k)%z0    /=-1 ) print *,1021
if (v(k)%z1(10)/=-1 ) print *,1022
if (v(k)%z2(10)/=-1 ) print *,1023
if (v(k)%z3(10)/=-1 ) print *,1024
if (v(k)%z4(10)/=-1 ) print *,1025
if (v(k)%z5(10)/=-1 ) print *,1026
end do
end
subroutine s2
use  m1
  TYPE(x) :: v(:),w(3)
  allocatable:: v
do k=1,3
allocate(w(k)% z0    ,source=-1)
allocate(w(k)% z1(10),source=-1)
allocate(w(k)% z2(10),source=-1)
allocate(w(k)% z3(10),source=-1)
allocate(w(k)% z4(10),source=-1)
allocate(w(k)% z5(10),source=-1)
end do
v= fx(w)
if (size(v)/=3      ) print *,111
do k=1,3
if (size(v(k)%z1)/=10      ) print *,101
if (v(k)%z0    /=2 ) print *,1021
if (v(k)%z1(10)/=2 ) print *,1022
if (v(k)%z2(10)/=2 ) print *,1023
if (v(k)%z3(10)/=2 ) print *,1024
if (v(k)%z4(10)/=2 ) print *,1025
if (v(k)%z5(10)/=2 ) print *,1026
end do
end
  do k=1,10
  call s1
  call s2
  end do
print *,'pass'
end
