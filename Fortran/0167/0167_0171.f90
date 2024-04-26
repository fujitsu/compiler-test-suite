module m1
  integer :: a,b(100),c,d=77,x
  equivalence(a,x,b,c,d)
end

module m2
  use m1
end

use m1
use m2
if (a/=77) print *,1
if (x/=77) print *,11
if (c/=77) print *,3
if (d/=77) print *,4
if (b(1)/=77) print *,5
b=22
if (any(b/=22)) print *,2
if (a/=22) print *,1
if (x/=22) print *,11
if (c/=22) print *,3
if (d/=22) print *,4
print *,'pass'
end
