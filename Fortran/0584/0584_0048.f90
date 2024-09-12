use ieee_arithmetic
logical,parameter::r1= ieee_support_rounding (ieee_up,23.3+54.7)

logical res
res =ieee_support_rounding (ieee_up,23.3+54.7)
if(r1 .neqv. res) print*,"101"
print*,"pass"
end
