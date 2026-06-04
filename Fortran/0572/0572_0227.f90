        character(len = 20) :: ch(2:3,2:3)
        integer :: n
        n = 10
        call sub(ch)
        contains
        subroutine sub(x)
        type(*) :: x(..)
        if(any(lbound(x) /= 1)) print*,"102",lbound(x)
        if(any(ubound(x) /= 2)) print*,"103",ubound(x)
        if(any(shape(x) /= 2)) print*,"104"
        if(size(x) /= 4) print*,"105"

        print*,"PASS"
        end subroutine
        end
