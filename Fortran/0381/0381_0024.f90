module m1
bind(c,name='xx'):: /a/
common /a/ k
end
module m2
use m1
bind(c,name='xx'):: /a/
common /a/ kk
end
use m1
use m2
k=1
if (k/=1)print *,1001,k
print *,'pass'
end
