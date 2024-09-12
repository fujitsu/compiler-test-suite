module m1
real,target:: rr(5)
character(LEN=3),target::ctrg(3)
contains
        subroutine sub(dfx,dfun,dopt) 
        real,intent(inout) :: dfx(:)
        character(LEN=3),intent(out) :: dfun(3)
        integer,intent(in) :: dopt
        dfx(dopt:dopt+2:1)=rr(dopt)
        dfun=(/"AAA","BBB","CCC"/)
        end subroutine
end module

use m1
integer::opt
rr = [10.11,11.11,12.11,13.11,14.11]
ctrg = (/"ZZZ","YYY","XXX"/)
opt=2
call sub(fx(),fun(),opt)
if (all(rr(2:4) /= [11.11,11.11,11.11]))print*,101 
if (all(ctrg /= (/"AAA","BBB","CCC"/)))print *,102
print *,"Pass"
contains

        function fx()
        real,pointer :: fx(:)
        fx=>rr
        end function

        function fun()
        character(LEN=:),pointer :: fun(:)
        fun=>ctrg
        end function
end
