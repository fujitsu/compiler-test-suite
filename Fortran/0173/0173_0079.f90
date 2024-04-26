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
  TYPE(x) :: v(2),w(1) , y(1)
allocate(w(1)% z(-100:-100),source=-1)
allocate(v(1)% z(1),source=1)
v(2:)= merge(  merge(v(:1) , y, .true.) , merge(y , y , .true.) , .true. )  
if (v(1)%z(1)/=1 ) print *,101
if (v(2)%z(1)/=1 ) print *,102
end
do k=1,100
call s1
end do
print *,'pass'
end
