use ieee_arithmetic

integer,parameter::radix=10
integer,parameter::jj = ieee_selected_real_kind(radix=radix)

integer::res
res= ieee_selected_real_kind(radix=radix)

if(jj/=res) print*,"101"
print*,"pass"

end
