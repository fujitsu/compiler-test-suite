module m1
contains
 elemental function f( k1 )
integer,intent(in)::k1
integer::f
f=k1
 end function
end
use m1
if (f(1)/=1) print *,101
print *,'pass'
end
