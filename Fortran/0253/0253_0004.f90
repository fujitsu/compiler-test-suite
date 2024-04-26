program main
call sub
contains
subroutine sub
integer::ii(2),res
ii=0
open(UNIT=ii(2),ACTION='write',FILE='fort.07')
write(ii(2),'(G0)')1016
close(ii(2))
open(UNIT=ii(1),ACTION='read',FILE='fort.07')
read(ii(1),'(I4)')res
close(ii(1),status="delete")
if (res/=1016)print*,"error:101"
print*,"pass"
end subroutine
end
