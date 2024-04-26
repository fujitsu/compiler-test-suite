module m1
  integer::a1,a2,a3
end 
module m2
use m1,only:b1=>a1,a2,b3=>a3
end 
subroutine s1
use m1
use m2
do k=1,3
a1=1
a2=2
a3=3
b1=11
b3=13
if (loc(a3)/=loc(b3)) print '(1h ,z16.16,x,z16.16)',loc(a3),loc(b3)
if (a1/=11) print *,201
if (a2/=2) print *,202
if (a3/=13) print *,203,a3
if (b1/=11) print *,211,b1
if (b3/=13) print *,213,b3
end do
end
call s1
print *,'pass'
end
