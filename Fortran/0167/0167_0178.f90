module m1
  integer :: a,b(100),c,d=44,e
  equivalence(a,e)
  equivalence(b,c,d)
end

module m2
  use m1,x=>a,y=>b,z=>c,v=>e
end

module m3
  use m1,xx=>a,yy=>b,zz=>c,vv=>e
end

use m2
use m3
x=11
if (xx/=11) print *,1
if (x/=11) print *,1
if (vv/=11) print *,1
if (v/=11) print *,1
if (yy(1)/=44) print *,3
if (y(1)/=44) print *,3
if (zz/=44) print *,3
if (z/=44) print *,3
if (d/=44) print *,4
y=22
if (any(yy/=22)) print *,2
if (any(y/=22)) print *,2
if (zz/=22) print *,3
if (z/=22) print *,3
print *,'pass'
end
