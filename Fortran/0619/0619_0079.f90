module mod
parameter(a01=1,a02=real(z'80000000'))
parameter(b01=sign(a01,a02))
contains
subroutine s21(x)
y=-x
b02=sign(1.0,y)
if (b01/=-1)print *,101
if (b02/=-1)print *,102
end subroutine
end
use mod
call s21(0.0)
print *,'pass'
end

