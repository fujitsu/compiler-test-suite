character (len = 10) :: ch(5)
call sub(ch(2:4)(2:7))
        contains
        subroutine sub(x)
        character(len = *) :: x(..)
        if(len(x) /= 6) print*, "101"
        if(any(lbound(x) /= 1)) print*, "102"
        if(any(ubound(x) /= 3)) print*, "103"
        if(any(shape(x) /= 3)) print*, "104"
        if(size(x) /= 3) print*, "105"

        print*,"PASS"
        end subroutine
        end
