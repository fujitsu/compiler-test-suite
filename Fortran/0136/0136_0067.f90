call s1
call s2
call s3
print *,'pass'
end
subroutine s1
use ieee_arithmetic
if(ieee_support_inf().neqv..true.) print *,'err1'
end
subroutine s2
use ieee_arithmetic
real(4)::x=1.0
if(Ieee_support_inf(x).neqv..true.) print *,'err2'
end
subroutine s3
use ieee_arithmetic
real(4),dimension(2)::x=1.0
if(ieee_support_inf(x).neqv..true.) print *,'err3'
end
