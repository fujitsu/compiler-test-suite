integer :: a(5)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        integer :: y(5)
        y = kind(xx)+5
        if(any(y /=9))print*,101
        print*,"PASS"
        end subroutine
end        
