use ieee_arithmetic

integer,parameter::r1= ieee_selected_real_kind (23+54,2*290,2)

integer res
res =ieee_selected_real_kind (23+54,2*290,2)
if(r1 /= res) print*,"101"
print*,"pass"
end
