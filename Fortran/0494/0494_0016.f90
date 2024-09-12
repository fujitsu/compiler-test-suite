module m1
complex(2),parameter:: c2p1=(1,1)
real   (4),parameter:: r4p1=1
end
use m1
if (kind( r4p1  + c2p1    )/= 4) print *,101
if (kind( c2p1  + r4p1    )/= 4) print *,102
print *,'pass'
end
