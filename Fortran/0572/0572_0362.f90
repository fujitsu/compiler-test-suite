call sub("hello")
        contains
        subroutine sub(xx)
        character(len = *) :: xx(..)
        if(len(xx) /= 5)print*,101
        print*,"PASS"
        end subroutine
end        
