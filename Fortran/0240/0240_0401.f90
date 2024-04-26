call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
real ::x
logical ::result
result = ieee_support_flag(ieee_invalid,x)
if(result.neqv..true.) print *,'err'
end
