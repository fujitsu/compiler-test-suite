module m1
contains
subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
implicit complex(4)(d),complex(8)(e),complex(16)(f)
parameter (a01=1.234567_4)
parameter (c01=1.2345678901234567890123456789012345678901_16)
parameter (f01=(c01,c01))
parameter (a20=a01**f01)

if (abs(a01-1.234567)>0.00001)print *,101
if (abs(f01-(1.2345678901234567890123456789012346_16,1.2345678901234567890123456789012346_16))>0.00001)print *,101
end subroutine
end
use m1
call s1
print *,'pass'
end
