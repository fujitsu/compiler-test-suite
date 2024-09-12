use , intrinsic :: ieee_arithmetic
use , intrinsic :: ieee_exceptions

type (ieee_class_type) :: ict01
type (ieee_round_type) :: irt01

real    :: rr, r01, r02
logical :: ll, l01, l02, l03, l04, l05
logical :: la1(3), la2(5)

r01 = 1.0
r02 = 2.0

ict01 = ieee_class(r01)
rr    = ieee_copy_sign(r01, r02)

call ieee_get_flag(ieee_invalid,        l01)
call ieee_get_flag(ieee_divide_by_zero, l02)
call ieee_get_flag(ieee_overflow,       l03)
call ieee_get_flag(ieee_underflow,      l04)
call ieee_get_flag(ieee_inexact,        l05)
call ieee_get_flag(ieee_usual,          la1)
call ieee_get_flag(ieee_all,            la2)

call ieee_get_halting_mode(ieee_invalid,        l01)
call ieee_get_halting_mode(ieee_divide_by_zero, l02)
call ieee_get_halting_mode(ieee_overflow,       l03)
call ieee_get_halting_mode(ieee_underflow,      l04)
call ieee_get_halting_mode(ieee_inexact,        l05)
call ieee_get_halting_mode(ieee_usual,          la1)
call ieee_get_halting_mode(ieee_all,            la2)

call ieee_get_rounding_mode(irt01)

print *,'pass'

end
