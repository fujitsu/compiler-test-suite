module m1
integer(2),parameter :: n(2,2)=RESHAPE([2,1,1,2],[2,2])
real(8),parameter :: x(2,2)=RESHAPE([2.0,1.8,1.4,2.2],[2,2])
integer::rslt= rank(a=n)
integer::rslt2= rank(a=x)
contains
subroutine sub1
implicit none
if(rslt.ne.2)  print *,101
if(rslt2.ne.2)  print *,101
end subroutine
end module m1
program pro
use m1
implicit none
call sub1
print*,"pass"
end

