module m1
  integer :: a,b(100),c,d=44,e(50)
  equivalence(b,e)
end

module m2
  use m1
end

module m3
  use m1
end

use m2
use m3
a=11
b=22
c=33
if (a/=11) print *,1
if (any(b/=22)) print *,2
if (any(e/=22)) print *,2
if (c/=33) print *,3
if (d/=44) print *,4
print *,'pass'
end
