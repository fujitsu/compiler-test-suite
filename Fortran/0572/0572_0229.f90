character(len = :),pointer :: ch_ptr(:)
character(len = 10),target :: ch_tgt(4)
ch_ptr=>ch_tgt
call sub(ch_ptr)
        contains
        subroutine sub(x)
        type(*) :: x(..)
        if(any(lbound(x) /= 1)) print*,"102"
        if(any(ubound(x) /= 4)) print*,"103"
        if(any(shape(x) /= 4)) print*,"104"
        if(size(x) /= 4) print*,"105"

        print*,"PASS"
        end subroutine
        end
