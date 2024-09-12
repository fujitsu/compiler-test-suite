module m1
interface chk
module procedure i1,i2,i4,i8,r4,r8,r16,c4,c8,c16
end interface
parameter(k=4)
contains
subroutine s1
implicit real(4)(a),real(8)(b),real(16)(c)
implicit complex(4)(d),complex(8)(e),complex(16)(f)
parameter (a01=1.234567_4)
parameter (b01=1.2345678901234_8)
parameter (c01=1.2345678901234567890123456789012345678901_16)
parameter (d01=(a01,a01))
parameter (e01=(b01,b01))
parameter (f01=(c01,c01))
parameter (a11=a01**6_1)
parameter (a12=a01**6_2)
parameter (a13=a01**6_4)
parameter (a14=a01**6_8)
parameter (a15=a01**a01)
parameter (a16=a01**b01)
parameter (a17=a01**c01)
parameter (a18=a01**d01)
parameter (a19=a01**e01)
parameter (a20=a01**f01)

call chk(a11,a01,6_1)
call chk(a12,a01,6_2)
call chk(a13,a01,6_4)
call chk(a14,a01,6_8)
call chk(a15,a01,a01)
call chk(a16,a01,b01)
call chk(a17,a01,c01)
call chk(a18,a01,d01)
call chk(a19,a01,e01)
call chk(a20,a01,f01)
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

