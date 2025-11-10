call sub(5)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        print*,"PASS"
        print*,ubound(xx)
        end subroutine
end        
