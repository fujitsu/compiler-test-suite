module m1
pointer(ptr,ia)
end
module m2
use m1,only:ptr,ia
use m1,only:ptrx=>ptr
contains
 subroutine sub(n)
  integer::x=1
   if (n==1) then
     ptrx=loc(x)
   else 
     ptr=loc(x)
   endif
 end subroutine
end
use m2,only:sub,ia
call sub(1)
if (ia.ne.1) print *,'err'
call sub(2)
if (ia.ne.1) print *,'err-2'
print *,'pass'
end
