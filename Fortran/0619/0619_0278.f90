module m1
contains
subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
implicit complex(4)(d),complex(8)(e),complex(16)(f)
parameter (a01=1.234567_4)
parameter (a12=a01**15_2)
parameter (a13=a01**15_4)

call i2(a12,a01,15_2)
call i4(a13,a01,15_4)
end subroutine
subroutine i2(x01,x02,x03)
real(4)::x01
real(4)::x02
integer(2)::x03
if (x01/=x02**x03)print *,102,x01,x02,x03,x02**x03
end subroutine
subroutine i4(x01,x02,x03)
real(4)::x01
real(4)::x02
integer(4)::x03
if (x01/=x02**x03)print *,104,x01,x02,x03,x02**x03
end subroutine
end
use m1
call s1
print *,'pass'
end

