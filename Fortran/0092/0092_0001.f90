subroutine sub
integer::arr(4),aa
arr=0
open(NEWUNIT=arr(1),ACTION='write',FILE='fort.02')
write(arr(1),*)2016
close(arr(1))
open(NEWUNIT=arr(3),ACTION='read',FILE='fort.02')
read(arr(3),*)aa
close(arr(3),status="delete")
if (aa .ne. 2016)print*,"error:1"
if (arr(2)/=0)print*,"error:2"
end subroutine
program main
call sub
print*,"pass"
end
