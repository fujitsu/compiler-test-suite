module m1
  integer:: x1=1,x2=2,x3=3
end
module m2
   use m1,only:x1
   integer::y1
end
module m3
   use m1,only:x2
   use m2,only:x1
   integer::y2
end
module m4
   use m1,only:x3
   use m2,only:x1
   use m3,only:x2
end
use m4,only:x1,x2,x3
if (x1/=1) print *,101
if (x2/=2) print *,101
if (x3/=3) print *,101
print *,'pass'
end
