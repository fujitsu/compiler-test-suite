module m1
contains
subroutine sub(n)
character(4)::n(4),res
open(100,file="fort.07",action="write")
write(100,10)n
10 format(*(G0,:))
close(100)
open(200,file="fort.07",action="read")
read(200,'(A4)')res
close(200)
if (res/="abcd")print*,101
end subroutine
end module

program main
use m1
call sub((/"abcd","efgh","ijkl","mnop"/))
print*,"Pass"
end
