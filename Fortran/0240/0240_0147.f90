use, intrinsic :: ieee_arithmetic
type(ieee_round_type) ::round_value
real ::x
round_value = ieee_nearest
x=1
call ieee_get_rounding_mode(round_value)
if(ieee_support_datatype(x)) then
if(ieee_support_rounding(round_value, x)) then
call ieee_set_rounding_mode(ieee_nearest)
end if
end if
call ieee_set_rounding_mode(round_value)
print *,'pass'
end
