call r4
call r8
call r16
print *,'pass'
contains
subroutine r4
use, intrinsic :: ieee_arithmetic
real(int(z'4')) r
if(.not.ieee_support_flag(ieee_inexact,r)) print *,'err1'
if(.not.ieee_support_flag(ieee_invalid,r)) print *,'err2'
if(.not.ieee_support_flag(ieee_overflow,r)) print *,'err3'
if(.not.ieee_support_flag(ieee_divide_by_zero,r)) print *,'err4'
if(.not.ieee_support_flag(ieee_underflow,r)) print *,'err5'
if(.not.ieee_support_flag(ieee_usual(1),r)) print *,'err6'
if(.not.ieee_support_flag(ieee_usual(2),r)) print *,'err7'
if(.not.ieee_support_flag(ieee_usual(3),r)) print *,'err8'
if(.not.ieee_support_flag(ieee_all(1),r)) print *,'err9'
if(.not.ieee_support_flag(ieee_all(2),r)) print *,'err10'
if(.not.ieee_support_flag(ieee_all(3),r)) print *,'err11'
if(.not.ieee_support_flag(ieee_all(4),r)) print *,'err12'
if(.not.ieee_support_flag(ieee_all(5),r)) print *,'err13'
end subroutine
subroutine r8
use, intrinsic :: ieee_arithmetic
real(int(z'8')) r
if(.not.ieee_support_flag(ieee_inexact,r)) print *,'err1'
if(.not.ieee_support_flag(ieee_invalid,r)) print *,'err2'
if(.not.ieee_support_flag(ieee_overflow,r)) print *,'err3'
if(.not.ieee_support_flag(ieee_divide_by_zero,r)) print *,'err4'
if(.not.ieee_support_flag(ieee_underflow,r)) print *,'err5'
if(.not.ieee_support_flag(ieee_usual(1),r)) print *,'err6'
if(.not.ieee_support_flag(ieee_usual(2),r)) print *,'err7'
if(.not.ieee_support_flag(ieee_usual(3),r)) print *,'err8'
if(.not.ieee_support_flag(ieee_all(1),r)) print *,'err9'
if(.not.ieee_support_flag(ieee_all(2),r)) print *,'err10'
if(.not.ieee_support_flag(ieee_all(3),r)) print *,'err11'
if(.not.ieee_support_flag(ieee_all(4),r)) print *,'err12'
if(.not.ieee_support_flag(ieee_all(5),r)) print *,'err13'
end subroutine
subroutine r16
use, intrinsic :: ieee_arithmetic
real(int(z'10')) r
if(.not.ieee_support_flag(ieee_inexact,r)) print *,'err1'
if(.not.ieee_support_flag(ieee_invalid,r)) print *,'err2'
if(.not.ieee_support_flag(ieee_overflow,r)) print *,'err3'
if(.not.ieee_support_flag(ieee_divide_by_zero,r)) print *,'err4'
if(.not.ieee_support_flag(ieee_underflow,r)) print *,'err5'
if(.not.ieee_support_flag(ieee_usual(1),r)) print *,'err6'
if(.not.ieee_support_flag(ieee_usual(2),r)) print *,'err7'
if(.not.ieee_support_flag(ieee_usual(3),r)) print *,'err8'
if(.not.ieee_support_flag(ieee_all(1),r)) print *,'err9'
if(.not.ieee_support_flag(ieee_all(2),r)) print *,'err10'
if(.not.ieee_support_flag(ieee_all(3),r)) print *,'err11'
if(.not.ieee_support_flag(ieee_all(4),r)) print *,'err12'
if(.not.ieee_support_flag(ieee_all(5),r)) print *,'err13'
end subroutine
end
