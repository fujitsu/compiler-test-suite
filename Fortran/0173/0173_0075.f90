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
  TYPE(x) :: v(1),w(1)
allocate(v(1)% z(1),source=1)
call sub( f(  f(v ) ) )
contains
subroutine sub(b)
  TYPE(x) :: b(1)
end subroutine
end
do k=1,100
call s1
end do
print *,'pass'
end
