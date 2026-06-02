integer :: a(5)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(rank(xx) .ne. 1)print*,"101"
        print*,'PASS'
        end subroutine
end        
