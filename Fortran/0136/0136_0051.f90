use, intrinsic :: ieee_arithmetic
type( ieee_round_type ) round_value
call ieee_get_rounding_mode(round_value) 
call ieee_set_rounding_mode(ieee_nearest)
call ieee_set_rounding_mode(round_value)
print *,'pass'
end
