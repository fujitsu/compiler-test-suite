module m1
contains
subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
implicit complex(4)(d),complex(8)(e),complex(16)(f)
parameter (a01=1.234567_4)
parameter (b01=1.2345678901234_8)
parameter (e01=(b01,b01))
parameter (a19=a01**e01)
parameter (b19=a01**e01)
parameter (d19=a01**e01)
parameter (e19=a01**e01)

a29=a01**e01
b29=a01**e01
d29=a01**e01
e29=a01**e01
if (a19/=a29)print *,101
if (b19/=b29)print *,102
if (d19/=d29)print *,103
if (e19/=e29)print *,104
call c8(a19,a01,e01)
end subroutine
subroutine c8(x01,x02,x03)
real(4)::x01
real(4)::x02
complex(8)::x03
if (x01/=real(x02**x03,4))print *,402,x01,x02,x03,real(x02**x03,4)
end subroutine
end
use m1
call s1
print *,'pass'
end

