character(kind = 1) :: ch(2:5)
call sub(ch)
        contains
        subroutine sub(x)
        character(len = *) :: x(..)
        if(len(x) /= 1) print*,"101"
        if(any(lbound(x) /= 1)) print*,"102"
        if(any(ubound(x) /= 4)) print*,"103"
        if(any(shape(x) /= 4)) print*,"104"
        if(size(x) /= 4) print*,"105"
     
        print*,"PASS"
        end subroutine
        end
