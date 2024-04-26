module m1
  integer :: a,b(100),c,d=77,e
  equivalence(a,e,b,c,d)
end

module m2
  use m1
end

use m1
use m2,x=>a,y=>b,w=>d
if (a/=77) print *,1
if (x/=77) print *,1
if (e/=77) print *,1
if (y(1)/=77) print *,2
if (b(1)/=77) print *,2
if (c/=77) print *,3
if (d/=77) print *,4
if (w/=77) print *,4
b=22
if (any(b/=22)) print *,2
if (any(y/=22)) print *,2
if (c/=22) print *,3
if (d/=22) print *,4
if (w/=22) print *,4
print *,'pass'
end
