MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: v(2)
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
v(1)= f(  v(1) )
if (   (v(1)%z(1)/=1 )) print *,101
v= f(  v )
if (   (v(1)%z(1)/=1 )) print *,101
if (   (v(2)%z(1)/=2 )) print *,101
end
use m1
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=2)
do k=1,30
call s1
end do
print *,'pass'
end
