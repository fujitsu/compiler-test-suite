module m1
type ty
integer::i1
real::r1
character(5)::ch
end type
type(ty)::obj
contains
subroutine sub(res1,res2,res3)
character(5)::res1
integer::res2
real::res3
obj = ty(123,120.50,"abcde")
open(100,file="fort.108",action="write")
write(100,10)obj%ch,obj%i1,obj%r1
close(100)
10 FORMAT (*(G0))
open(200,file="fort.108",action="read")
read(200,20)res1,res2,res3
close(200)
20 FORMAT(A5,I3,F6.2)
print*,"pass"
end subroutine
end module
program main
use m1
character(5)::d1
integer::d2
real::d3
call sub(d1,d2,d3)
if (d1/="abcde")print*,101
if (d2/=123)print*,102
if (d3/=120.50)print*,103
end
