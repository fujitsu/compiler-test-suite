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
 type (x):: r(3)
 r%x1 =1
end function
end

use m1
v1%x1 =1
if (v1(1)%x1 /=1) print *,101
 call sub( f() )
 call sub( (f()) )
 call sub( (v1(k1:2)))
if (v1(1)%x1 /=1) print *,111
print *,'pass'
end
