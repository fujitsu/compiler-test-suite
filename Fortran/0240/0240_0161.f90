use, intrinsic :: ieee_arithmetic
real ::x
logical ::result
result = ieee_support_flag(ieee_invalid,x)
print *,'pass'
end
