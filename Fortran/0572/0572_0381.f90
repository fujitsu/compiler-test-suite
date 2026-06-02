integer :: a(5,3,4)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(size(xx) /= 60) print*, "101"
        print*, "PASS"
        end subroutine
end        
