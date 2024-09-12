module m1
interface chk
module procedure i1,i2,i4,i8,r4,r8,r16,c4,c8,c16
end interface
parameter(k=4)
contains
subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
implicit complex(4)(d),complex(8)(e),complex(16)(f)
real(4),parameter::a0m=5_4
real(8),parameter::b0m=5_4
real(16),parameter::c0m=5_4
complex(4),parameter::d0m=5_4
complex(8),parameter::e0m=5_4
complex(16),parameter::f0m=5_4
parameter (a01=1.234567_4)
parameter (b01=1.2345678901234_8)
parameter (c01=1.2345678901234567890123456789012345678901_16)
parameter (d01=(a01,a01))
parameter (e01=(b01,b01))
parameter (f01=(c01,c01))
parameter (a11=a01**5_1)
parameter (a12=a01**5_2)
parameter (a13=a01**5_4)
parameter (a14=a01**5_8)
parameter (a15=a01**a0m)
parameter (a16=a01**b0m)
parameter (a17=a01**c0m)
parameter (a18=a01**d0m)
parameter (a19=a01**e0m)
parameter (a20=a01**f0m)

call chk(a11,a01,5_1)
call chk(a12,a01,5_2)
call chk(a13,a01,5_4)
call chk(a14,a01,5_8)
call chk(a15,a01,a0m)
call chk(a16,a01,b0m)
call chk(a17,a01,c0m)
call chk(a18,a01,d0m)
call chk(a19,a01,e0m)
call chk(a20,a01,f0m)
end subroutine
subroutine c16(x01,x02,x03)
real(k)::x01
real(k)::x02
complex(16)::x03
if (x01/=real(x02**x03,k))print *,403,x01,x02,x03,real(x02**x03,k)
end subroutine
subroutine c8(x01,x02,x03)
real(k)::x01
real(k)::x02
complex(8)::x03
if (x01/=real(x02**x03,k))print *,402,x01,x02,x03,real(x02**x03,k)
end subroutine
subroutine c4(x01,x02,x03)
real(k)::x01
real(k)::x02
complex(4)::x03
if (x01/=real(x02**x03))print *,401,x01,x02,x03,real(x02**x03)
end subroutine
subroutine r16(x01,x02,x03)
real(k)::x01
real(k)::x02
real(16)::x03
if (x01/=real(x02**x03,k))print *,303,x01,x02,x03,real(x02**x03,k)
end subroutine
subroutine r8(x01,x02,x03)
real(k)::x01
real(k)::x02
real(8)::x03
if (x01/=real(x02**x03,k))print *,302,x01,x02,x03,real(x02**x03,k)
end subroutine
subroutine r4(x01,x02,x03)
real(k)::x01
real(k)::x02
real(4)::x03
if (x01/=x02**x03)print *,301,x01,x02,x03,x02**x03
end subroutine
subroutine i8(x01,x02,x03)
real(k)::x01
real(k)::x02
integer(8)::x03
if (x01/=x02**x03)print *,104,x01,x02,x03,x02**x03
end subroutine
subroutine i4(x01,x02,x03)
real(k)::x01
real(k)::x02
integer(4)::x03
if (x01/=x02**x03)print *,103,x01,x02,x03,x02**x03
end subroutine
subroutine i2(x01,x02,x03)
real(k)::x01
real(k)::x02
integer(2)::x03
if (x01/=x02**x03)print *,102,x01,x02,x03,x02**x03
end subroutine
subroutine i1(x01,x02,x03)
real(k)::x01
real(k)::x02
integer(1)::x03
if (x01/=x02**x03)print *,101,x01,x02,x03,x02**x03
end subroutine
end
use m1
call s1
print *,'pass'
end

