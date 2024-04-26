module m1
 type x
   integer:: x1
 end type
 type (x):: v1(3)
integer::k1=1
contains
subroutine sub( c1)
 type (x)      :: c1(*)
if (c1(1)%x1 /=1) print *,3101
end subroutine
end

use m1
v1%x1 =1
 call sub(  v1(k1:2) )
 call sub( (v1(k1:2)))
print *,'pass'
end
