call sub(5.5)        
        contains
        subroutine sub(xx)
        real :: xx(..)
        if(is_contiguous(xx).neqv..true.)print*,"Pass"
        end subroutine
end        
