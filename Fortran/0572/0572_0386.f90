call sub(5)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(is_contiguous(xx).neqv..true.)print*,"10001"
        print*,"Pass"
        end subroutine
end        
