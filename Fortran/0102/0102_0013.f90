type ty
logical::constvar=BGE(b'110',z'15')
end type ty
type(ty)::obj
if(obj%constvar .neqv. .false.)print*,'100'
print*,"PASS"
end
