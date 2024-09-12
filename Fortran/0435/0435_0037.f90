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
  TYPE(y) :: v,w
allocate(w%b(1)%z(2),source=[1,2])
allocate(w%b(2)%z(2),source=[1,2])
w%b(1)%a=[1,2]
w%b(2)%a=[1,2]
w=y( 1 ,   f(w%b) )
if (any(w%b(2)%a/=[1,2])) print *,101211,w%b(2)%a
if (any(w%b(2)%z/=[1,2])) print *,101212,w%b(2)%z
if (size(w%b(2)%z)/=2) print *,106313
end
do k=1,100
call s1
end do
print *,'pass'
end
