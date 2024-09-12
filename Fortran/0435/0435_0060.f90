module m1
type x
  integer::a
  integer,allocatable::z(:)
end type
type y
  integer::a
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
   type(x):: bb(1)
w%b(1)%a=1
allocate(bb(1)%z(2),source=[1,2])
allocate(w%b(1)%z(2),source=[1,2])
v=y( 1 ,   bb  )
if (any(v%b(1)%z/=[1,2])) print *,101
if (size(v%b(1)%z)/=2) print *,102
v=w
if (any(v%b(1)%z/=[1,2])) print *,101
if (size(v%b(1)%z)/=2) print *,102
end
do k=1,1
call s1
end do
print *,'pass'
end
