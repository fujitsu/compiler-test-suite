module m1
  integer :: a,b(100),c,d=77,e
  equivalence(a,e)
  equivalence(b,c,d)
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
if (a/=11) print *,1
if (e/=11) print *,1
if (b(1)/=77) print *,2
if (c/=77) print *,3
if (d/=77) print *,4
b=22
if (any(b/=22)) print *,2
if (c/=22) print *,3
if (d/=22) print *,4
print *,'pass'
end
