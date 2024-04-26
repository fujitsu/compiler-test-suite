call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
real :: result,x
x = -1.1
if (ieee_support_datatype(x)) then
result = ieee_logb(x)
end if
if(result.ne.0.0) print *,'err'
end
