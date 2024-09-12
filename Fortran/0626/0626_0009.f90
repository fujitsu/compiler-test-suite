use, intrinsic :: ieee_arithmetic
logical ::flag_value
call ieee_get_flag(ieee_overflow, flag_value)
if (flag_value)print *,101
print *,'pass'
end
