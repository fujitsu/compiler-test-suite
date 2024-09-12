module m1
type x1
  integer:: xx1
end type
type,extends(x1):: x2
  integer:: xx2
end type
contains
subroutine s1(x)
class(x1),value:: x
k=0
select type( x )
 type is( x2 )
   if (x% xx2 /= 1) print *,101
   x% xx2 =2
   k=1
end select
if (k/=1) print *,201
end subroutine
end
use m1
class(x1),allocatable::a
allocate( x2 :: a)
select type( a )
 type is( x2 )
   a% xx2 =1
end select
call s1(a)
select type( a )
 type is( x2 )
   if (a% xx2 /=1) print *,501
end select
print *,'pass'
end
