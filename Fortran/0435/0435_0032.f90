module m1
type x
  integer,allocatable::z(:)
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
  TYPE(x) :: v(2),w(2)
allocate(w(1)%z(2),source=[1,2])
allocate(w(2)%z(2),source=[1,2])
v=[f(w)]
if (any(v(1)%z/=[1,2])) print *,101212,v(1)%z
if (any(v(2)%z/=[1,2])) print *,106213
if (size(v(2)%z)/=2) print *,106313
end
do k=1,100
call s1
end do
print *,'pass'
end
