module m1
  integer :: a,b(100),c,d=77,x(100)
  equivalence(b,x)
end

module m2
  use m1
end

use m1
use m2
a=11
b=22
c=33
if (a/=11) print *,1
if (any(b/=22)) print *,2
if (any(x/=22)) print *,2
if (c/=33) print *,3
if (d/=77) print *,4
print *,'pass'
end
