module m1
contains
 pure elemental function f( k1) result(k2)
 integer,intent(in ):: k1
k2=k1
end 
end
use m1
k2=1
if (f(k2)/=1) print *,101
print *,'pass'
end
