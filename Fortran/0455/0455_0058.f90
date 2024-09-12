module m1
contains
 subroutine s1(p)
   integer,pointer,intent(in)::p
   if (p/=1) print *,101
   p=2
 end
end
use m1
integer,target::t=1
call s1(t)
if (t/=2) print *,201
print *,'pass'
end

  
