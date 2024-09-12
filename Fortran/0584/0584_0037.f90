use ieee_arithmetic

integer*8,parameter::radix=2
integer*8,parameter::p=10
integer*8,parameter::r=23
integer,parameter::jj = kind(ieee_selected_real_kind(p,r,radix))
if(jj/=4) print*,"101"
print*,"pass"

end
