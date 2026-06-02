character(len = 5) :: a
call sub(a)
        contains
        subroutine sub(xx)
        character(len = *) :: xx(..)
        if(len(xx).eq. 5) THEN
        print*,"PASS"
        else
        print*,101
        end if
        end subroutine
end        
