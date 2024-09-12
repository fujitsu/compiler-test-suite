use, intrinsic :: ieee_arithmetic
integer ::result
result = ieee_selected_real_kind(6,30)
if (1.eq.2) print *,result
print *,"pass"
end
