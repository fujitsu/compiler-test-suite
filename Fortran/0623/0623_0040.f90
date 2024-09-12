use, intrinsic :: ieee_arithmetic
integer(ieee_selected_real_kind(6,30)) :: sss
integer ::result(ieee_selected_real_kind(6,30))
integer ::result2(selected_real_kind(3,3))
if (1.eq.2)print *,size(result)
if (1.eq.2)print *,size(result2)
if (1.eq.2)print *,ieee_selected_real_kind(6,30)
print *,"pass"
end
