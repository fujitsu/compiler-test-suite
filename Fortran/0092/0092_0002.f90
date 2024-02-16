type ty
integer::ii
end type
type(ty)::obj
character(LEN=4)::ch
open(NEWUNIT=obj%ii,FILE='fort.03',ACTION='write')
write(obj%ii,*)"abcd"
close(obj%ii)
open(NEWUNIT=obj%ii,FILE='fort.03',ACTION='read')
read(obj%ii,*)ch
close(obj%ii,status="delete")
if (ch/="abcd")print*,"error:101"
print*,"pass"
end
