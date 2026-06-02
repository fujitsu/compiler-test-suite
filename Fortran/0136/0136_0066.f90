call s1
call s2
call s3
print *,'pass'
end
subroutine s1
use ieee_arithmetic
if(ieee_support_flag(ieee_inexact).neqv..true.) print *,'err1'
if(ieee_support_flag(ieee_invalid).neqv..true.) print *,'err2'
if(ieee_support_flag(ieee_overflow).neqv..true.) print *,'err3'
if(ieee_support_flag(ieee_divide_by_zero).neqv..true.) print *,'err4'
if(ieee_support_flag(ieee_underflow).neqv..true.) print *,'err5'
end
subroutine s2
use ieee_arithmetic
real(4)::r
real(8)::d
real(16)::q
r=1.0
d=1.0d0
q=1.0q0
if(ieee_support_flag(ieee_inexact,r).neqv..true.) print *,'err6'
if(ieee_support_flag(ieee_invalid,r).neqv..true.) print *,'err7'
if(ieee_support_flag(ieee_overflow,r).neqv..true.) print *,'err8'
if(ieee_support_flag(ieee_divide_by_zero,r).neqv..true.) print *,'err9'
if(ieee_support_flag(ieee_underflow,r).neqv..true.) print *,'err10'
if(ieee_support_flag(ieee_inexact,d).neqv..true.) print *,'err11'
if(ieee_support_flag(ieee_invalid,d).neqv..true.) print *,'err12'
if(ieee_support_flag(ieee_overflow,d).neqv..true.) print *,'err13'
if(ieee_support_flag(ieee_divide_by_zero,d).neqv..true.) print *,'err14'
if(ieee_support_flag(ieee_underflow,d).neqv..true.) print *,'err15'
if(ieee_support_flag(ieee_inexact,q).neqv..true.) print *,'err16'
if(ieee_support_flag(ieee_invalid,q).neqv..true.) print *,'err17'
if(ieee_support_flag(ieee_overflow,q).neqv..true.) print *,'err18'
if(ieee_support_flag(ieee_divide_by_zero,q).neqv..true.) print *,'err19'
if(ieee_support_flag(ieee_underflow,q).neqv..true.) print *,'err20'
end
subroutine s3
use ieee_arithmetic
real(4),dimension(2)::r
real(8),dimension(2)::d
real(16),dimension(2)::q
r=1.0
d=1.0d0
q=1.0q0
if(ieee_support_flag(ieee_inexact,r).neqv..true.) print *,'err21'
if(ieee_support_flag(ieee_invalid,r).neqv..true.) print *,'err22'
if(ieee_support_flag(ieee_overflow,r).neqv..true.) print *,'err23'
if(ieee_support_flag(ieee_divide_by_zero,r).neqv..true.) print *,'err24'
if(ieee_support_flag(ieee_underflow,r).neqv..true.) print *,'err25'
if(ieee_support_flag(ieee_inexact,d).neqv..true.) print *,'err26'
if(ieee_support_flag(ieee_invalid,d).neqv..true.) print *,'err27'
if(ieee_support_flag(ieee_overflow,d).neqv..true.) print *,'err28'
if(ieee_support_flag(ieee_divide_by_zero,d).neqv..true.) print *,'err29'
if(ieee_support_flag(ieee_underflow,d).neqv..true.) print *,'err30'
if(ieee_support_flag(ieee_inexact,q).neqv..true.) print *,'err31'
if(ieee_support_flag(ieee_invalid,q).neqv..true.) print *,'err32'
if(ieee_support_flag(ieee_overflow,q).neqv..true.) print *,'err33'
if(ieee_support_flag(ieee_divide_by_zero,q).neqv..true.) print *,'err34'
if(ieee_support_flag(ieee_underflow,q).neqv..true.) print *,'err35'
end
