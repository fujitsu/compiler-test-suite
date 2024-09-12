subroutine sub
integer,allocatable::ptr(:)
integer,allocatable::tar(:)
integer::aa
allocate(ptr(3),tar(3))
open(NEWUNIT=ptr(2),ACTION='write',FILE='fort.06')
write(ptr(2),*)101
close(ptr(2))
open(NEWUNIT=tar(2),ACTION='read',FILE='fort.06')
read(tar(2),*)aa
close(tar(2),status="delete")
if (aa/=101)print*,"error:101"
print*,"pass"
end subroutine

program main
call sub
end
