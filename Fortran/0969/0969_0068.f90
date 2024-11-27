use, intrinsic :: ieee_arithmetic
real :: rr
if (ieee_support_datatype(rr)) print *,ieee_value(rr, ieee_positive_zero)
end
