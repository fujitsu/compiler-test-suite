module m1
integer,private::a=1
integer::b=2
end
subroutine s1
use m1
common /b/ k
if (b/=2) print *,101
if (k/=3) print *,201
end
call s1
print *,'pass'
end
block data
common /b/ k
data k/3/
end
