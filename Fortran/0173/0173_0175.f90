MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
type(x),pointer::p(:)
CONTAINS
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d(:)
    TYPE(x),pointer     :: r(:)
allocate(r(size(d)))
   r=d
do k=1,size(d)
   r(k)%z1=d(k)%z1+1
   r(k)%z2=d(k)%z2+1
   r(k)%z3=d(k)%z3+1
end do
p=>r
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x),pointer :: v(:)
do k=1,100
allocate(v(3))
allocate(v(1)% z1(1),source=1)
         v(1)% z2=1
allocate(v(1)% z3(1),source=1)
allocate(v(2)% z1(1),source=1)
         v(2)% z2=1
allocate(v(2)% z3(1),source=1)
v(2:3)= f(  v(1:2) )
deallocate(p)
if (v(1)%z1(1)/=1 ) print *,101
if (v(1)%z2/=1 ) print *,101
if (v(1)%z3(1)/=1 ) print *,101
if (v(2)%z1(1)/=2 ) print *,101
if (v(2)%z2/=2 ) print *,101
if (v(2)%z3(1)/=2 ) print *,101
if (v(3)%z1(1)/=2 ) print *,101
if (v(3)%z2/=2 ) print *,101
if (v(3)%z3(1)/=2 ) print *,101
deallocate(v)
end do
end
do k=1,100
call s1
end do
print *,'pass'
end
