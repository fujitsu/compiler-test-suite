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
if (c1(2)%x1 /=1) print *,3102
if (any(c1(1)%x2 /=2)) print *,3201
if (any(c1(2)%x2 /=2)) print *,3203
end subroutine
end

use m1
v1%x1 =1
v1(1)%x2 =2
v1(3)%x2 =2
if (v1(1)%x1 /=1) print *,101
if (v1(3)%x1 /=1) print *,102
if (any(v1(1)%x2 /=2)) print *,201
if (any(v1(3)%x2 /=2)) print *,203
 call sub( (v1(1:3:2)))
if (v1(1)%x1 /=1) print *,111
if (v1(3)%x1 /=1) print *,112
if (any(v1(1)%x2 /= 0+2)) print *,211
if (any(v1(3)%x2 /= 0+2)) print *,213
print *,'pass'
end
