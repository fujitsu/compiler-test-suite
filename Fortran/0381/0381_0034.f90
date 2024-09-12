module m1
integer k1,k2
bind(c)::k2
end
subroutine s1
use m1
if (k1/=0)print *,101
if (k2/=0)print *,102
end
subroutine s2
use m1
k1=0
end
call s2
call s1
print *,'pass'
end
