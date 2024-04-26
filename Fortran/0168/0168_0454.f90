type ty
integer(KIND=2)::ii
end type
type(ty)::obj
open(NEWUNIT=obj%ii,FILE='fort.08',ACTION='write')
write(obj%ii,*)25.25
close(obj%ii)
open(NEWUNIT=obj%ii,FILE='fort.08',ACTION='read')
close(obj%ii)
print*,"pass"
end
