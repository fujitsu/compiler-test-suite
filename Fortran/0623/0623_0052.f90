use, intrinsic :: ieee_arithmetic
real :: x,y
logical ::result
y = 0.0
x = 0.0/y
if (ieee_support_nan(x)) then
  result = ieee_is_nan(x)
end if
print *,'pass'
end
