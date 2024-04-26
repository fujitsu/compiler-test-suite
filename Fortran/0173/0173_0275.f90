MODULE m1
type xx
integer:: u
end type
  TYPE :: x
    type(xx), ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
   r%z(1)%u = d%z(1)%u+2
  END FUNCTION 
END MODULE 
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(3)
allocate(v(1)% z(1),source=xx(1))
allocate(v(2)% z(1),source=xx(2))
allocate(v(3)% z(1),source=xx(3))
v(2:3)= f(  v(1:2) )
if (v(1)%z(1)%u/=1) print *,101
if (v(2)%z(1)%u/=3) print *,101
if (v(3)%z(1)%u/=4) print *,101
v(1)= f(  v(1) )
if (v(1)%z(1)%u/=3) print *,101
print *,'pass'
end
