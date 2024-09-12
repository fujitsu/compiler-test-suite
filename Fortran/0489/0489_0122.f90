use, intrinsic :: ieee_arithmetic
integer :: result
result = selected_real_kind(1,1, 2)
result = ieee_selected_real_kind(1,1, 2)
if ( result == 4 .or. result == 2) then
  print *,"pass"
else 
  print *,"ng",result
endif
end
