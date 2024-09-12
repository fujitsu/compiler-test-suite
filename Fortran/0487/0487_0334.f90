module m1
 implicit none
 type x1
   integer::v1
 end type
 type,extends(x1)::x2
   integer::v2
 end type
 type,extends(x2)::x3
   integer::v3
 end type
contains
 subroutine s( d )
  class(x2)::d
  integer::k
  k=0
  select type (d)
   type is (x3)
   k=1
  end select
  if (k/=1) print *,101
 end subroutine
end
use m1
call s( x3( v1=1 , v2=2 , v3=3 ) )
print *,'pass'
end
