call sub(5)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(kind(xx).ne.4)print*,"101"
        print*,"PASS"
        end subroutine
end        
