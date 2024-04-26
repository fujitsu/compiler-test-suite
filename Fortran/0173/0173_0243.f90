MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
CONTAINS
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1(n1,n2,n3)
use  m1
  TYPE(x) :: v(1),w(3)
allocate(v(1)% z1(1),source=1)
         v(1)% z2=1
allocate(v(1)% z3(1),source=1)
w(n1:n3:n2)= f(  v(n2-1) )
if (w(1)%z1(1)/=1 ) print *,101
if (w(1)%z2/=1 ) print *,101
if (w(1)%z3(1)/=1 ) print *,101
if (allocated(w(2)%z1 )) print *,101
if (allocated(w(2)%z3 )) print *,101
if (w(3)%z1(1)/=1 ) print *,101
if (w(3)%z2/=1 ) print *,101
if (w(3)%z3(1)/=1 ) print *,101
end
do k=1,100
call s1(1,2,3)
end do
print *,'pass'
end
