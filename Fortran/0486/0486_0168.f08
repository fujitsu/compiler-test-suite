module m1
contains
pure function   kf( dmy)
integer,intent(in),allocatable:: dmy
kf=dmy
end function
end
use m1
integer,allocatable::t
allocate(t)
t=1
if (kf(t)/=1) print *,201
print *,'pass'
end
