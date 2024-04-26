MODULE m1
  TYPE :: x
    integer :: z(2)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
r=d
   r%z(1) = d%z(1)+1
  END FUNCTION 
END MODULE 
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(1),w(1)
v(1)% z(1)=1
v(1)% z(2)=1
v= f(  v )
if (v(1)%z(1)/=2 ) print *,101
print *,'pass'
end
