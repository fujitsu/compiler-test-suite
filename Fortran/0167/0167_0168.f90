module m
  integer a,b,c,eqa
  equivalence(a,eqa)
  equivalence(b,c)
end

use m,x=>a,y=>b,xx=>eqa
x=11
y=22
if (x/=11) print *,1
if (xx/=11) print *,1
if (y/=22) print *,2
if (c/=22) print *,3
print *,'pass'
end
