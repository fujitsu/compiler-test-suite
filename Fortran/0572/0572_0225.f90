character(len = 10) :: ch(10)
call sub(ch)
        contains
        subroutine sub(x)
        type(*) :: x(..)
        if(any(lbound(x) /= 1)) print*,"102"
        if(any(ubound(x) /= 10)) print*,"103"
        if(any(shape(x) /= 10)) print*,"104"
        if(size(x) /= 10) print*,"105"

        print*,"PASS"
        end subroutine
        end
