integer :: a(5)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        logical :: y(5)
        y = is_contiguous(xx)
        if(any(y.NEQV. .TRUE.))print*,101
        print*,"PASS"
        end subroutine
end        
