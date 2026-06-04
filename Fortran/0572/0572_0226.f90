character(len = 10) :: ch(3,3)
call sub(ch)
        contains
        subroutine sub(x)
        type(*) :: x(..)
        if(any(lbound(x) /= 1)) print*,"102"
        if(any(ubound(x) /= 3)) print*,"103"
        if(any(shape(x) /= 3)) print*,"104"
        if(size(x) /= 9) print*,"105"

        print*,"PASS"
        end subroutine
        end
