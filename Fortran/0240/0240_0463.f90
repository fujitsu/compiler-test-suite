use, intrinsic :: ieee_arithmetic
real :: result,x
x = 1.1
if (ieee_support_datatype(x)) then
call ieee_set_rounding_mode(ieee_nearest)
result = ieee_rint(x)
end if
print *,'pass'
end
