module m1
type x
  integer::a(2)=[1,2]
  integer,allocatable::z(:)
end type
type y
  integer::a
   type(x):: b(2)
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
   type(x):: bb(2)
w%b(1)%a=1
w%b(2)%a=1
allocate(w%b(1)%z(2),source=[1,2])
allocate(w%b(2)%z(2),source=[1,2])
allocate(bb(1)%z(2),source=[1,2])
allocate(bb(2)%z(2),source=[1,2])
call sub(y( 1 ,   f(w%b) ))
v=y( 1 ,   bb  )
if (any(v%b(2)%a/=[1,2])) print *,401211,v%b(2)%a
if (any(v%b(2)%z/=[1,2])) print *,401212,v%b(2)%z
if (size(v%b(2)%z)/=2) print *,206413
v=y( 1 ,   w%b )
if (any(v%b(2)%a/=[1,1])) print *,301211,v%b(2)%a
if (any(v%b(2)%z/=[1,2])) print *,301212,v%b(2)%z
if (size(v%b(2)%z)/=2) print *,306313
v=y( 1 ,   f(w%b) )
if (any(v%b(2)%a/=[1,1])) print *,201211,v%b(2)%a
if (any(v%b(2)%z/=[1,2])) print *,201212,v%b(2)%z
if (size(v%b(2)%z)/=2) print *,206313
end
do k=1,1
call s1
end do
print *,'pass'
end
subroutine sub(v)
use m1
  TYPE(y) :: v
if (any(v%b(2)%a/=1)) print *,101211,v%b(2)%a
if (any(v%b(2)%z/=[1,2])) print *,101212,v%b(2)%z
if (size(v%b(2)%z)/=2) print *,106313
end 
