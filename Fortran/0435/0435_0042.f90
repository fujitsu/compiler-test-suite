module m1
type x
  integer,allocatable::z(:)
end type
type y
   type(x):: b(1)
end type
contains
  ELEMENTAL FUNCTION f( d ) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d 
  END FUNCTION 
function yy( d ) result(r)
    TYPE(x), INTENT(IN) :: d(:)
    TYPE(y) :: r
   r%b=d 
   r%b(1)%z=r%b(1)%z+1
  END FUNCTION 
end
subroutine s1
use m1
  TYPE(y) :: v(2)
  TYPE(y) :: w(2)
allocate(w(1)%b(1)%z(2),source=[1,2])
v=yy(  f(w(1)%b) )
if (any(v(1)%b(1)%z/=[1,2]+1)) print *,101
if (any(v(2)%b(1)%z/=[1,2]+1)) print *,101
if (size(v(1)%b(1)%z)/=2) print *,102
if (size(v(2)%b(1)%z)/=2) print *,102
end
do k=1,100
call s1
end do
print *,'pass'
end
