integer :: a(5)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(kind(xx) .eq. 4) THEN
        print*, "PASS"
        end if
        end subroutine
end        
