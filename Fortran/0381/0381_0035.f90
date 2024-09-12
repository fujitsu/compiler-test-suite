module m1
common /xx/ k1,k2
bind(c,name='ww')::/xx/
end
use m1
if (k1/=0) print *,101
if (k2/=0) print *,102
print *,'pass'
end
