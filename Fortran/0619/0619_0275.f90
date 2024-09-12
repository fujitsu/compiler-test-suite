module m1
contains
subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
implicit complex(4)(d),complex(8)(e),complex(16)(f)
parameter (a01=1.234567_4)
parameter (b01=1.2345678901234_8)
parameter (a16=a01**b01)
call r8(a16,a01,b01)
end subroutine
subroutine r8(x01,x02,x03)
real(4)::x01
real(4)::x02
real(8)::x03
if (x01/=real(x02**x03,4))print *,302,x01,x02,x03,real(x02**x03,4)
end subroutine
end
use m1
call s1
print *,'pass'
end

