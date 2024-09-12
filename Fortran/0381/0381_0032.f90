module m1
integer k1,k2
bind(c)::k2
end
use m1
if (k2/=0)print *,102
print *,'pass'
end
