module m1
contains
subroutine s(n)
integer,target::n(:)
integer,target::t(5)=10+[1,2,3,4,5]
integer,pointer::p(:)

p=>t(1::3)
if (any(p/=[11,14])) print *,102
end subroutine
end
use m1
call s([1,3,5])
print *,'pass'
end

