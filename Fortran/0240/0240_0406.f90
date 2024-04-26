call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
type(ieee_round_type) ::round_value
logical ::result
round_value = ieee_nearest
result = ieee_support_rounding(round_value)
if(result.neqv..true.) print *,'err'
end
