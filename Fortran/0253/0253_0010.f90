program main
integer:: r1,r3
logical ::r2
integer::res1,res3
logical :: res2
r1=123
r2= .true.
r3=456
call sub(r1,r2,r3)
contains
subroutine sub(d1,d2,d3)
integer:: d1,d3
logical :: d2
open(unit=10,file='fort.14')
write (10,'(G0,G0,G0)')d1,d2,d3
close(10)
open(unit=20,file='fort.14')
read (20,'(I3,L1,I3)')res1,res2,res3
close(20)
if (res1/=123)print*,101
if (.not.res2)print*,102
if (res3/=456)print*,103
print*,"Pass"
end subroutine
end program
