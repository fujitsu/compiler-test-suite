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
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(2)
type e
  TYPE(x) :: w(2)
  end type
  type ee
    type(e):: h
  end type
  type (ee)::t

allocate(v(1)% z1(1),source=10)
         v(1)% z2=10
allocate(v(1)% z3(1),source=10)
allocate(v(2)% z1(1),source=1)
         v(2)% z2=1
allocate(v(2)% z3(1),source=1)
t%h%w= f(  v(2) )
if (t%h%w(1)%z1(1)/=1 ) print *,101
if (t%h%w(1)%z2/=1 ) print *,101
if (t%h%w(1)%z3(1)/=1 ) print *,101
if (t%h%w(2)%z1(1)/=1 ) print *,101
if (t%h%w(2)%z2/=1 ) print *,101
if (t%h%w(2)%z3(1)/=1 ) print *,101
t%h%w=     v(1) 
if (t%h%w(1)%z1(1)/=10 ) print *,101
if (t%h%w(1)%z2/=10 ) print *,101
if (t%h%w(1)%z3(1)/=10 ) print *,101
if (t%h%w(2)%z1(1)/=10 ) print *,101
if (t%h%w(2)%z2/=10 ) print *,101
if (t%h%w(2)%z3(1)/=10 ) print *,101
end
do k=1,10
call s1
end do
print *,'pass'
end
