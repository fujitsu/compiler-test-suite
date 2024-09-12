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
end
subroutine s1
use m1
  TYPE(y) :: v,w
allocate(w%b(1)%z(2),source=[1,2])
v=y(  f(w%b) )
if (any(v%b(1)%z/=[1,2])) print *,101
if (size(v%b(1)%z)/=2) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
