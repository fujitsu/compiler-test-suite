module m1
integer k2
bind(c)::k2
end
use m1
if (k2/=0)print *,101
print *,'pass'
end
