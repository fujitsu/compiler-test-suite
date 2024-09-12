module m1
type x
  integer,allocatable::z(:)
end type
type y
   integer::a1
   type(x):: b(1)
   integer::a2
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
  TYPE(y) :: v(1)
  TYPE(x) :: w(1)
allocate(w(1)%z(2),source=[1,2])
v=y( 1, f(w),2 )
if (any(v(1)%b(1)%z/=[1,2])) print *,101
if (size(v(1)%b(1)%z)/=2) print *,102
if (    v(1)%a1/=1) print *,102
if (    v(1)%a2/=2) print *,103
end
do k=1,100
call s1
end do
print *,'pass'
end