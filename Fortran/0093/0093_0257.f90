module m1
complex(8),parameter,dimension(2,2)::ca=RESHAPE([(1,1),(3,2),(5,3),(7,4)],[2,2])
complex(8),parameter,dimension(2,2)::cr=RESHAPE([(11,2),(12,4),(13,6),(14,8)],[2,2])
contains
subroutine s01(c)
complex :: c(2,2)
c=ca
write(1,*) 11.,12.,13.,14.
rewind 1
read(1,*) c%re
rewind 1
write(1,*) 2.,4.,6.,8.
rewind 1
read(1,*) c%im
if (any(c%re/=cr%re)) print *,101
if (any(c%im/=cr%im)) print *,102
end subroutine
end
use m1
complex, allocatable :: c(:,:)
allocate(c(2,2))
call s01(c)
print*,"pass"
end
