character(len = 10) :: a
call sub(a)
        contains
        subroutine sub(xx)
        character(len = *) :: xx(..)
        integer :: y
        y = len(xx)
        if(y /=10 )print*,101
        print*,"PASS"
        end subroutine
end        
