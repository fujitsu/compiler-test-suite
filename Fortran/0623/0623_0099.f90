use, intrinsic :: ieee_arithmetic
logical ::save_underflow_mode
real ::x
x=1.0
if (ieee_support_underflow_control(x)) then
  call ieee_get_underflow_mode(save_underflow_mode)
  call ieee_set_underflow_mode(gradual=.false.)
  call ieee_set_underflow_mode(save_underflow_mode)
end if
print *,"pass"
end
