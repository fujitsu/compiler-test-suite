module m1
type x
  integer::a(2)
  integer,allocatable::z(:)
end type
type y
  integer::a(2)
   type(x):: b(2)
end type
contains
  ELEMENTAL FUNCTION f( d ) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d 
  END FUNCTION 
  ELEMENTAL FUNCTION ff( d ) RESULT( r ) 
    integer, INTENT(IN) :: d
    integer :: r
   r=d 
  END FUNCTION 
end
subroutine s1
use m1
  TYPE(y) :: v(2),w(2)
w(1)%b(1)%a=[1,2]
w(1)%b(2)%a=[1,2]
w(2)%b(1)%a=[1,2]
w(2)%b(2)%a=[1,2]
allocate(w(1)%b(1)%z(2),source=[1,2])
allocate(w(2)%b(1)%z(2),source=[1,2])
allocate(w(1)%b(2)%z(2),source=[1,2])
allocate(w(2)%b(2)%z(2),source=[1,2])
v=y( 1 ,   f(w(2)%b) )
if (any(v(1)%b(2)%a/=[1,2])) print *,101211,v(1)%b(2)%a
if (any(v(2)%b(2)%a/=[1,2])) print *,121211,v(2)%b(2)%a
if (any(v(1)%b(2)%z/=[1,2])) print *,101212,v(1)%b(2)%z
if (any(v(2)%b(2)%z/=[1,2])) print *,106213
if (size(v(1)%b(2)%z)/=2) print *,106313
if (size(v(2)%b(2)%z)/=2) print *,106313
end
do k=1,100
call s1
end do
print *,'pass'
end
