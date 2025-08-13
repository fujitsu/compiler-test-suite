subroutine sub
integer,allocatable::ptr
integer::tar
integer::aa
allocate(ptr)
open(NEWUNIT=ptr,ACTION='write',FILE='fort.05')
write(ptr,*)101
close(ptr)
open(NEWUNIT=tar,ACTION='read',FILE='fort.05')
read(tar,*)aa
close(tar,status="delete")
if (aa/=101)print*,"error:101"
print*,"pass"
end subroutine

program main
call sub
end
