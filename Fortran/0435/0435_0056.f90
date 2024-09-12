module m1
type x
  integer::a(2)=[1,2]
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
allocate(w%b(1)%z(2),source=[1,2])
allocate(bb(1)%z(2),source=[1,2])
v=y( 1 ,   bb  )
v=y( 1 ,   w%b )
v=y( 1 ,   f(w%b) )
if (any(v%b(1)%a/=[1,2])) print *,101211,v%b(1)%a
if (any(v%b(1)%z/=[1,2])) print *,101212,v%b(1)%z
if (size(v%b(1)%z)/=2) print *,106313
end
do k=1,100
call s1
end do
print *,'pass'
end
subroutine sub
end 
