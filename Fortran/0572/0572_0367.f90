call sub(5)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(rank(xx).ne.0)print*,"101"
        print*,"PASS"
        end subroutine
end        
