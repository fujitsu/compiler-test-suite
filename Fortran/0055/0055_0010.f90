module m1
interface a 
 module procedure::k1
end interface 
contains
function k1(n1,n2)
intent(in)::n1,n2
k1=n1+n2
end function
end
use m1
if (a(1,2)/=3) print *,101
print *,'PASS'
end
 
