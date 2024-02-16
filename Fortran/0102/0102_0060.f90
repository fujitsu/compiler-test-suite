type ty
logical::constvar=BLE(b'110',z'15')
end type ty
type(ty)::obj
if(obj%constvar .neqv. .TRUE.)print*,'100'
print*,"PASS"
end
