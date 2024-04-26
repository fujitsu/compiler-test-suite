MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
CONTAINS
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x),allocatable :: r
allocate(r)
   r=d
   r%z1=d%z1+1
   r%z2=d%z2+1
   r%z3=d%z3+1
  END FUNCTION 
END MODULE 
subroutine s1(n1,n2,n3)
use  m1
type e
  TYPE(x) :: v(3)
end type
type(e)::g
allocate(g%v(1)% z1(1),source=1)
         g%v(1)% z2=1
allocate(g%v(1)% z3(1),source=1)
allocate(g%v(2)% z1(1),source=1)
         g%v(2)% z2=1
allocate(g%v(2)% z3(1),source=1)
g%v(n2:n3:n1)= f(  g%v(n2) )
if (g%v(1)%z1(1)/=1 ) print *,101
if (g%v(1)%z2/=1 ) print *,101
if (g%v(1)%z3(1)/=1 ) print *,101
if (g%v(2)%z1(1)/=2 ) print *,101
if (g%v(2)%z2/=2 ) print *,101
if (g%v(2)%z3(1)/=2 ) print *,101
if (g%v(3)%z1(1)/=2 ) print *,101
if (g%v(3)%z2/=2 ) print *,101
if (g%v(3)%z3(1)/=2 ) print *,101
end
do k=1,30
call s1(1,2,3)
end do
print *,'pass'
end
