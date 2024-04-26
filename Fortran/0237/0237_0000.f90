module m1
implicit real(4)(a),real(8)(b),real(16)(c),complex(4)(e),complex(8)(f),complex(16)(g)
parameter (c01=0.1)
interface s
module procedure tc
end interface
contains
subroutine tc(a1,a2)
implicit real(16)(a)
if (a2/=sin(a1))print *,103
end subroutine
end
subroutine s1
use m1
implicit real(4)(a),real(8)(b),real(16)(c),complex(4)(e),complex(8)(f),complex(16)(g)
parameter (c02=sin(c01))
parameter (k02=kind(sin(c01)))
if (k02/=16)print *,102
call s(c01,c02)
end
call s1
print *,'pass'
end
