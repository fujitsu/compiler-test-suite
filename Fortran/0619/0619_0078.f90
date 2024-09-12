module mod
implicit real(a,b,c,d)
dimension a05(3),b20(3)
dimension c05(3),d20(3)
parameter(a01=-1,a11=-a01,a02=0.0,a12=real(z'80000000'),a05=[a02,a12,a02])
parameter(b01=sign(a01,a01))
parameter(b02=sign(a01,a11))
parameter(b03=sign(a01,a02))
parameter(b04=sign(a01,a12))
parameter(b11=sign(a11,a01))
parameter(b12=sign(a11,a11))
parameter(b13=sign(a11,a02))
parameter(b14=sign(a11,a12))
parameter(b20=sign(a01,a05))
parameter(n01=kind(sign(a01,a05)))
parameter(n02=size(sign(a01,a05)))
contains
subroutine s21
c01=a01;c11=a11
d01=sign(c01,a01)
d02=sign(c01,a11)
d03=sign(c01,a02)
d04=sign(c01,a12)
d11=sign(c11,a01)
d12=sign(c11,a11)
d13=sign(c11,a02)
d14=sign(c11,a12)
d20=sign(c01,a05)
if (b01/=d01)print *,101
if (b02/=d02)print *,102
if (b03/=d03)print *,103
if (b04/=d04)print *,104
if (b11/=d11)print *,105
if (b12/=d12)print *,106
if (b13/=d13)print *,107
if (b14/=d14)print *,108
if (any(b20/=d20))print *,110
if (n01/=4)print *,1102
if (n02/=3)print *,1103

end subroutine
end
use mod
call s21
print *,'pass'
end

