module m1
 type x
   integer::x1
 end type
end
subroutine s1(d)
use m1
type(x)::d
d%x1=1
end
use m1
type(x)::a
call s1(a)
if (a%x1/=1)print *,101
print *,'pass'
end
