use ieee_arithmetic
integer,parameter :: i=10
logical ,parameter:: r1= ieee_support_rounding (ieee_up,real(i))

logical res
res =ieee_support_rounding (ieee_up,real(i))
if(r1 .neqv. res) print*,"101"
print*,"pass"
end
