character(len = 5) :: a
call sub(a)
        contains
        subroutine sub(xx)
        character(len = *) :: xx(..)
        if(len(xx) /= 5)print*,101
        print*,"PASS"
        end subroutine
end        
