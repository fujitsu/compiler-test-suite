module m1
pointer (ptr,v1)
pointer (ptr,v2)
end
module m2
use m1
end

use m2
x1=1
ptr=loc(x1)
if (v1/=1)print *,201
ptr=loc(x1)
if (v2/=1)print *,202
print *,'pass'
end
