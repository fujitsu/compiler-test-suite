integer :: a(5)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(is_contiguous(xx).NEQV. .TRUE.)print*,101
        print*,"PASS"
        end subroutine
end        
