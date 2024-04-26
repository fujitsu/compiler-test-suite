MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(2)
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=2)
call ss( f(  v ) )
contains
subroutine ss( dd )
    TYPE(x), INTENT(IN) :: dd(:)
if (size(dd)/=2) print *,201
if (dd(1)%z(1)/=1) print *,101
if (dd(2)%z(1)/=2) print *,102
end subroutine
end
do k=1,1000
call s1
end do
print *,'pass'
end
