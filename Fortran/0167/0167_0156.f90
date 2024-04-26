module m
  integer b,c,a,eqa
  equivalence(a,eqa)
end

use m,x=>a,y=>b,xx=>eqa
x=11
y=22
c=33
if (x/=11) print *,1
if (xx/=11) print *,1
if (y/=22) print *,2
if (c/=33) print *,3
print *,'pass'
end
