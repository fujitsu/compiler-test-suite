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
obj%ii=10
open(UNIT=obj%ii(2),FILE='fort.03',ACTION='write')
write(obj%ii(2),'(G0)')"xxxx"
close(obj%ii(2))
open(UNIT=obj%ii(4),FILE='fort.03',ACTION='read')
read(obj%ii(4),'(G4.1)')dmy
close(obj%ii(4),status="delete")
end subroutine
