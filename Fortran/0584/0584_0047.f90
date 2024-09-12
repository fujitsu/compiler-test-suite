use ieee_arithmetic

logical,parameter ::r2=ieee_support_rounding (ieee_up,32.3)
logical ::r3
r3  =ieee_support_rounding (ieee_up,32.3)

if(r2.neqv. r3) print*,"101"

print*,"pass"
end
