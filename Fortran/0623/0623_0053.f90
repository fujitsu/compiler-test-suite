use, intrinsic :: ieee_arithmetic
real ::x
logical ::result
x = 0.0
if (ieee_support_datatype(x)) then
  result = ieee_is_negative(x)
end if
print *,'pass'
end
