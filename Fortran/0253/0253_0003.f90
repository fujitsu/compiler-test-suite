program main
character(LEN=7)::ch
call sub(ch)
if (ch/="fortran")print*,"error:101",ch
print*,"pass"
contains
subroutine sub(dmy)
integer,allocatable::alc(:)
character(LEN=7)::dmy
allocate(alc(4))
alc=20
open(UNIT=alc(2),ACTION='write',FILE='fort.06')
write(alc(2),fmt=10)"fortran"
10 format(G0)
close(alc(2))
open(UNIT=alc(4),ACTION='read',FILE='fort.06')
read(alc(4),fmt=20)dmy
close(alc(4),status="delete")
20 format(G7.2)
end subroutine
end
