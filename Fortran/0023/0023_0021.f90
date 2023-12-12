module m1
   integer::a1=1
   integer::a2=2
   integer::a3=3
end

use m1,only: a2
use m1,only:
use m1,only: a1
implicit none

if (a1/=1) print *,201
if (a2/=2) print *,202
print *,'pass'
end


