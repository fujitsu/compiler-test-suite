program blecheck
implicit none
integer,parameter::a=b'11111111111111111111111111111101'
integer,parameter::b=b'11111111111111111111111111111100'
logical,parameter::constvar=BLE(a,b)
if(constvar .neqv. .false.) print*,"100"
print*,"PASS"
end program
