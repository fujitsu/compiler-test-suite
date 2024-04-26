MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
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
  TYPE(x) :: v(3),w(3)
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=2)
allocate(v(3)% z(1),source=3)
v(2:)= f(  v(:2) )
if (v(1)%z(1)/=1 ) print *,101
if (v(2)%z(1)/=1 ) print *,102
if (v(3)%z(1)/=2 ) print *,103
w(:)= f(  v(:) )
if (w(1)%z(1)/=1 ) print *,201
if (w(2)%z(1)/=1 ) print *,202
if (w(3)%z(1)/=2 ) print *,203
end
do k=1,100
call s1
end do
print *,'pass'
end
