character(len = 20) :: ch(2:3,2:3)
integer :: n
n = 10
call sub(ch)
        contains
        subroutine sub(x)
        character(len = n) :: x(..)
        if(len(x) /= 10) print*,"101"
        if(any(lbound(x) /= 1)) print*,"102"
        if(any(ubound(x) /= 2)) print*,"103"
        if(any(shape(x) /= 2)) print*,"104"
        if(size(x) /= 4) print*,"105"

        print*,"PASS"
        end subroutine
        end
