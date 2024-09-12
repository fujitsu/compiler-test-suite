module m1
integer k1,k2
bind(c)::k2
data k1/0/
end
use m1
if (k1/=0)print *,101
if (k2/=0)print *,102
print *,'pass'
end
