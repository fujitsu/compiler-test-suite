call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
type(ieee_round_type) ::round_value, round_back
real ::x=1.0
round_value = ieee_nearest
call ieee_get_rounding_mode(round_back)
if (ieee_support_datatype(x)) then
if (ieee_support_rounding(round_value, x)) then
call ieee_set_rounding_mode(round_value)
end if
end if
call ieee_set_rounding_mode(round_back)
end
