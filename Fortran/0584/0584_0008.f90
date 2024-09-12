use ieee_exceptions
integer,parameter :: i=10
logical ,parameter:: r1= ieee_support_flag (ieee_underflow,real(i))

logical res
res =ieee_support_flag (ieee_underflow,real(i))
if(r1 .neqv. res) print*,"101"
print*,"pass"
end
