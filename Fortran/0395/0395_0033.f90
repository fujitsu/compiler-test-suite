module m1
integer,private::a=1
integer::b=2
end
module m2
use m1
common /b/ k
end
subroutine s1
use m2
common /b/ kx
if (b/=2) print *,101
if (k/=3) print *,201
if (kx/=3) print *,202
end
call s1
print *,'pass'
end
block data
common /b/ k
data k/3/
end
