module m1
type x
  integer::a!(2)
  integer,allocatable::z(:)
end type
type y
  integer::a!(2)
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
  subroutine sub(v)
  TYPE(y) :: v
if (any(v%b(1)%z/=[1,2])) print *,39291
if (any(v%b(2)%z/=[1,2])) print *,39292
  end
end
subroutine s1
use m1
  TYPE(y) :: v(2)!,w(2)
type(x):: b(2)
allocate(b(1)%z(2),source=[1,2])
allocate(b(2)%z(2),source=[1,2])
v=y( 1 ,   b )
if (any(v%a/=1)) print *,2929
if (any(v(1)%b(1)%z/=[1,2])) print *,29291
if (any(v(1)%b(2)%z/=[1,2])) print *,29292
if (any(v(2)%b(1)%z/=[1,2])) print *,29293
if (any(v(2)%b(2)%z/=[1,2])) print *,29294
call  sub(y( 1 ,   b ))
end
do k=1,2
call s1
end do
print *,'sngg574r : pass'
end

