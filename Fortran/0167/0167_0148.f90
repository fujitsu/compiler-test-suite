module m1
  integer :: a,b(100),c,d=77,e(50)
  equivalence(b,e)
end

module m2
  use m1,x=>a,y=>b,w=>d
end

use m1
use m2
a=11
b=22
c=33
if (a/=11) print *,1
if (x/=11) print *,1
if (any(b/=22)) print *,2
if (any(e/=22)) print *,2
if (any(y/=22)) print *,2
if (c/=33) print *,3
if (d/=77) print *,4
if (w/=77) print *,4
print *,'pass'
end
