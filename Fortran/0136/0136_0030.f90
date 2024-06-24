use, intrinsic :: ieee_arithmetic

if(.not.ieee_support_halting(ieee_inexact)) print *,'err1'
if(.not.ieee_support_halting(ieee_invalid)) print *,'err2'
if(.not.ieee_support_halting(ieee_overflow)) print *,'err3'
if(.not.ieee_support_halting(ieee_divide_by_zero)) print *,'err4'
if(.not.ieee_support_halting(ieee_underflow)) print *,'err5'
if(.not.ieee_support_halting(ieee_usual(1))) print *,'err6'
if(.not.ieee_support_halting(ieee_usual(2))) print *,'err7'
if(.not.ieee_support_halting(ieee_usual(3))) print *,'err8'
if(.not.ieee_support_halting(ieee_all(1))) print *,'err9'
if(.not.ieee_support_halting(ieee_all(2))) print *,'err10'
if(.not.ieee_support_halting(ieee_all(3))) print *,'err11'
if(.not.ieee_support_halting(ieee_all(4))) print *,'err12'
if(.not.ieee_support_halting(ieee_all(5))) print *,'err13'
print *,'pass'
end