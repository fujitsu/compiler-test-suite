module m
integer :: n
end module

use m
character(len = 20) :: ch(0)
n = 10        
call sub(ch)
        contains
        subroutine sub(x)
        type(*) :: x(..)
        if(any(lbound(x) /= 1)) print*,"102"
        if(any(ubound(x) /= 0)) print*,"103"
        if(any(shape(x) /= 0)) print*,"104"
        if(size(x) /= 0) print*,"105"

        print*,"PASS"
        end subroutine
        end
