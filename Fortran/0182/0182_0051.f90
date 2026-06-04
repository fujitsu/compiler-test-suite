module m1
contains
subroutine s(d)
complex(16):: d(..)
if (size(d)/=6) print *,102
if (any(lbound(d)/=[1,1 ])) print *,103,lbound(d)
if (any(ubound(d)/=[3,2 ])) print *,104,ubound(d)
end 
end
use m1
complex(16):: a(2:4,-2:-1)=1
call s(a)
print *,'pass'
end
