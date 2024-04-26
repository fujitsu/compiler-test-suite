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
   r%z(1)%u = d%z(1)%u+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(1)
allocate(v(1)% z(1),source=xx(1))
v= f(  v )
if (v(1)%z(1)%u/=2) print *,101
v(1)= f(  v(1) )
if (v(1)%z(1)%u/=3) print *,101
end
do k=1,30
call s1
end do
print *,'pass'
end
