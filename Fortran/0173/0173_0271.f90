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
  TYPE(x) :: v(1,2),w(2,1)
allocate(v(1,1)% z(1),source=1)
allocate(v(1,2)% z(1),source=2)
w= reshape(  v ,[2,1])
if (w(1,1)%z(1)/=1 ) print *,101
if (w(2,1)%z(1)/=2 ) print *,101
end
do k=1,30
call s1
end do
print *,'pass'
end
