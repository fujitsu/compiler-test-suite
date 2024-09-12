use ieee_exceptions
logical,parameter::r1= ieee_support_flag (ieee_overflow,23.3+54.7)

logical res
res =ieee_support_flag (ieee_overflow,23.3+54.7)
if(r1 .neqv. res) print*,"101"
print*,"pass"
end
