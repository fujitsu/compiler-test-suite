module m
  integer a,b,c
end

use m,x=>a,y=>b
x=11
y=22
c=33
if (x/=11) print *,1
if (y/=22) print *,2
if (c/=33) print *,3
print *,'pass'
end
