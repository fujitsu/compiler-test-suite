integer :: a(5,3)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        integer :: y(5)
        y = size(xx)
        if(size(xx) /= 15) print*, "101"
        print*, "PASS"
        end subroutine
end        
