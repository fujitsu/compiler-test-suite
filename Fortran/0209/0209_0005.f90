module m1
contains
subroutine s(aa)
real(2)::a=1,b=2,aa
optional::aa
if(max(a,b,aa)/=2.)print *,101
if(min(a,b,aa)/=1.)print *,102
end subroutine
end
use m1
call s()
print *,'pass'
end
