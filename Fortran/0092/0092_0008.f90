program main
call sub
contains
subroutine sub
integer(KIND=4)::ii(2),res
ii=0
open(NEWUNIT=ii(2),ACTION='write',FILE='fort.10',FORM='UNFORMATTED')
write(ii(2))1016
close(ii(2))
open(NEWUNIT=ii(1),ACTION='read',FILE='fort.10',FORM='UNFORMATTED')
read(ii(1))res
close(ii(1),status="delete")
if (res/=1016)print*,"error:101"
print*,"pass"
end subroutine
end
