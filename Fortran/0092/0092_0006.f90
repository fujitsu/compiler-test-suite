program main
character(LEN=7)::ch
call sub(ch)
if (ch/="fortran")print*,"error:101"
print*,"pass"
contains
subroutine sub(dmy)
integer,allocatable::alc(:)
character(LEN=7)::dmy
allocate(alc(4))
alc=0
open(NEWUNIT=alc(2),ACTION='write',FILE='fort.07')
write(alc(2),*)"fortran"
close(alc(2))
open(NEWUNIT=alc(4),ACTION='read',FILE='fort.07')
read(alc(4),*)dmy
close(alc(4),status="delete")
end subroutine
end
