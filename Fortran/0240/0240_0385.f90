call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
logical ::flag_value
call ieee_get_flag(ieee_overflow, flag_value)
if(flag_value.neqv..false.) print *,'err'
end
