use, intrinsic :: ieee_arithmetic
integer ::result
result = ieee_selected_real_kind(6,30)
result = result
print *,'pass'
end
