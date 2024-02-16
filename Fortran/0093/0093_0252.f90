module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
contains
subroutine s01(c)
complex :: c(:)
c=ca
write(1,*) 11.,12.,13.,14.
rewind 1
read(1,*) c%re
if (any(c%re/=cr%re)) print *,101,c
end subroutine
end
use m1
complex :: c(4)
call s01(c)
print *,'pass'
end
