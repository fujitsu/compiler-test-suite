MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
CONTAINS
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d(:,:,:)
    TYPE(x) :: r(2,2,2)
   r=d
  END FUNCTION 
END MODULE 
subroutine s1(n2)
use  m1
  TYPE(x) :: v(n2,n2,n2),w(n2,n2,n2)
do k1=1,2
do k2=1,2
allocate(v(1,k1,k2)% z1(1),source=1)
         v(1,k1,k2)% z2=1
allocate(v(1,k1,k2)% z3(1),source=1)
allocate(v(2,k1,k2)% z1(1),source=1)
         v(2,k1,k2)% z2=1
allocate(v(2,k1,k2)% z3(1),source=1)
end do
end do
w= f(  v )
do k1=1,2
do k2=1,2
if (w(1,k1,k2)%z1(1)/=1 ) print *,101
if (w(1,k1,k2)%z2/=1 ) print *,101
if (w(1,k1,k2)%z3(1)/=1 ) print *,101
if (w(2,k1,k2)%z1(1)/=1 ) print *,101
if (w(2,k1,k2)%z2/=1 ) print *,101
if (w(2,k1,k2)%z3(1)/=1 ) print *,101
end do
end do
end
do k=1,100
call s1(2)
end do
print *,'pass'
end
