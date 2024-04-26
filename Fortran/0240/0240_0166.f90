use, intrinsic :: ieee_arithmetic
type(ieee_round_type) ::round_value
logical ::result
round_value = ieee_nearest
result = ieee_support_rounding(round_value)
print *,'pass'
end
