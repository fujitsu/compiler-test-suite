program blecheck1
implicit none
logical::constvar
logical::ble_check
constvar = ble_check()
if(constvar .neqv. .TRUE.)print*,"100"
print*,"PASS"
end program blecheck1

function ble_check() 
implicit none
integer,parameter::a=10
integer,parameter::b=20
logical::ble_check
logical,parameter::r=BLE(a,b)
ble_check=r
end function ble_check
