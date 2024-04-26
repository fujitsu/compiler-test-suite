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
  TYPE(x) :: v(1)
  TYPE e
    TYPE(x) :: w(1)
  end type
  type ee
    type(e):: h
  end type
  type (ee)::t
allocate(v(1)% z1(1),source=1)
         v(1)% z2=1
allocate(v(1)% z3(1),source=1)
t%h%w= f(  v(1) )
if (t%h%w(1)%z1(1)/=1 ) print *,101
if (t%h%w(1)%z2/=1 ) print *,101
if (t%h%w(1)%z3(1)/=1 ) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
