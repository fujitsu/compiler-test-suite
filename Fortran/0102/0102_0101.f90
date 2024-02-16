program blecheck
implicit none
integer,parameter::a=b'11111111111111111111111111111101'
integer,parameter::b=b'10000000000000000000000000000100'
logical,parameter::constvar=BLT(a,b)
if(constvar .neqv. .FALSE.) print*,"100"
print*,"PASS"
end program blecheck
