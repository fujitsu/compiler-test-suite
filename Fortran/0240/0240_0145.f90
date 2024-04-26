call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
logical ::halting
type(ieee_flag_type) ::flag
flag = ieee_overflow
call ieee_get_halting_mode(flag, halting)
if(ieee_support_halting(flag)) then
call ieee_set_halting_mode(flag, .false.)
end if
call ieee_set_halting_mode(flag, halting)
end
