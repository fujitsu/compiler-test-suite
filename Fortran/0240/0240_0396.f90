call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
call ieee_set_flag(ieee_overflow, .true.)
end
