use, intrinsic :: ieee_arithmetic
if(.not.ieee_support_rounding(ieee_to_zero)) print *,'err1'
if(.not.ieee_support_rounding(ieee_to_zero,1.0)) print *,'err2'
print *,'pass'
end
