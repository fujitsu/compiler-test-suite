type ty
logical::constvar=PARITY(mask=[.true.,.true.,.true.,.false.])
end type ty
type(ty)::obj
if(obj%constvar .neqv. .true.)print*,'100'
print*,"PASS"
end
