module m1
 type x
   integer:: x1
 end type
 type (x):: v1(3)
integer::k1=1,k2=2,k3=3
contains
subroutine sub( c1)
 type (x)      :: c1(*)
if (c1(1)%x1 /=1) print *,3101
end subroutine
function f( ) result(r)
 type (x):: r(k3)
 r%x1 =1
end function
end

use m1
 call sub( f() )
print *,'pass'
end
