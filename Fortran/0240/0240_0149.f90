use, intrinsic :: ieee_arithmetic
logical ::result
real ::x
x = 1.0
if (ieee_support_datatype(x)) then
result = ieee_is_finite(x)
end if
if (.not. result) print *,'err'
print *,'pass'
end
