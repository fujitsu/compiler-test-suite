use ieee_arithmetic

integer,parameter ::jj = ieee_selected_real_kind(radix=2_2,r=140_8)
integer::res
res= ieee_selected_real_kind(radix=2_2,r=140_8)
if(jj/=res)print*,"101"
print*,"pass"
end
