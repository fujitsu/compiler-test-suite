module m1
pointer(ptr,ia)
integer::x=100
contains
 subroutine sub
   ptr=loc(x)
 end subroutine
end
use m1,only:ptr,sub
use m1,only:ia 
call sub
if (ia.ne.100) print *,'err'
print *,'pass'
end
