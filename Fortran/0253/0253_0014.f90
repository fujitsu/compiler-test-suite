module m1
contains
subroutine sub(n)
integer::n,res
integer::arr(n)
arr = (/10,12,14,16/)
open(unit=10,file="fort.104",action="write")
write(10,'(*(G0))')(arr(i),i=1,n)
close(10)
open(unit=20,file="fort.104",action="read")
read(20,'(I2)')res
close(20)
if (res/=arr(1))print*,101
print*,"pass"
end subroutine
end module

program main
use m1
call sub(4)
end
