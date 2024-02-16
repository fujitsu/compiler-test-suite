program main
interface
subroutine sub(d1)
character(LEN=4)::d1
end subroutine
end interface
character(LEN=4)::ch
call sub(ch)
if (ch/="xxxx")print*,"error:101"
print*,"pass"
end
subroutine sub(dmy)
type ty
integer::ii(4)
end type
type(ty)::obj
character(LEN=4)::dmy
obj%ii=0
open(NEWUNIT=obj%ii(2),FILE='fort.04',ACTION='write')
write(obj%ii(2),*)"xxxx"
close(obj%ii(2))
open(NEWUNIT=obj%ii(4),FILE='fort.04',ACTION='read')
read(obj%ii(4),*)dmy
close(obj%ii(4),status="delete")
end subroutine
