module m1
type x
  integer::a
  integer,allocatable::z(:)
end type
type y
  integer::a
   type(x):: b(1)
end type
end
subroutine s1
use m1
  TYPE(y) :: v,w,ss
  type(x):: bb(1)
  type(x),allocatable:: cc(:)
allocate( cc(1) )
w%b(1)%a=1
bb(1)%a=1
cc(1)%a=1
allocate(cc(1)%z(2),source=[1,2])
allocate(bb(1)%z(2),source=[1,2])
v=ss
allocate(w%b(1)%z(2),source=[1,2])
v=w
if (any(v%b(1)%z/=[1,2])) print *,101
if (size(v%b(1)%z)/=2) print *,102
v=ss
v=y( 1 ,   cc  )
if (any(v%b(1)%z/=[1,2])) print *,101
if (size(v%b(1)%z)/=2) print *,102
v=ss
v=y( 1 ,   bb  )
if (any(v%b(1)%z/=[1,2])) print *,101
if (size(v%b(1)%z)/=2) print *,102
end
do k=1,100
call s1
end do
print *,'pass'
end
