module m1
pointer(ptr,ia)
end
module m2
use m1,only:ptr
end
module m3
use m1,only:ia
end
module m4
use m1
private
public::sub,x
integer::x=100
contains
subroutine sub
ptr=loc(x)
end subroutine
end
use m2,only:ptr
use m3,only:ia 
use m4,only:sub
call sub
if (ia.ne.100) print *,'err'
print *,'pass'
end
