module m1
complex(2),parameter:: c2p1=(1,1)
complex(2)          :: c2v1=(1,1)
real   (4),parameter:: r4p1=1
real   (4)          :: r4v1=1
interface gen
  procedure s
end interface
contains
subroutine s(x)
complex(4)::x
if (abs(x-(2,1))>0.0001) print *,201
end
end
use m1
call gen( r4p1  + c2p1    )
call gen( r4p1  + c2v1    )
call gen( r4v1  + c2p1    )
call gen( r4v1  + c2v1    )
print *,'pass'
end
