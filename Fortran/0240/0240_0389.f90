call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
logical ::result
real ::x
x = 1.0
if (ieee_support_datatype(x)) then
result = ieee_is_finite(x)
end if
if(result.neqv..true.) print *,'err'
end
