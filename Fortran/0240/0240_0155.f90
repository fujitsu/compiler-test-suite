use, intrinsic :: ieee_arithmetic
integer ::result
result = ieee_selected_real_kind(6,30)
if (result /= 4) print *,'err'
print *,'pass'
end
