integer :: a(5)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(kind(xx) /= 4)print*,"101"
        print*,"PASS"
        end subroutine
end        
