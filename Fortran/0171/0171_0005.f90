module m1
 type x
   integer:: x1
   integer:: x2(1)
 end type
 type (x):: v1(3)
integer::k1=1,k2=2,k3=3
contains
subroutine sub( c1)
 type (x)      :: c1(*)
if (c1(1)%x1 /=1) print *,3101
end subroutine
end

use m1
v1%x1 =1
v1(1)%x2 =2
v1(3)%x2 =2
if (v1(1)%x1 /=1) print *,101
 call sub( (v1(k1:3:2)))
if (v1(1)%x1 /=1) print *,111
print *,'pass'
end
