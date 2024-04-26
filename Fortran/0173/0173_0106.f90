MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x),target :: v(5),w(1)
allocate(w(1)% z(1),source=1)
v(5)= f( f( w(1) ) )
if (v(5)%z(1)/=3 ) print *,106
end
do k=1,100
call s1
end do
call s1
print *,'pass'
end
