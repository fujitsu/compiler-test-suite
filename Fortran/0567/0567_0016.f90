subroutine sub(d1,d2,d3)
integer::d1,d2,d3
open(NEWUNIT=d1,ACTION='write',FILE='fort.06')
write(d1,*)101
close(d1)
open(NEWUNIT=d2,ACTION='read',FILE='fort.06')
read(d2,*)d3
close(d2,status="delete")
if (d3/=101)print*,"error:101"
print*,"pass"
end subroutine

program main
integer,allocatable::ptr
integer::tar
integer::aa
allocate(ptr)
call sub(ptr,tar,aa)
end
