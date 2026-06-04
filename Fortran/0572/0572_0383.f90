integer :: a(5,10)
call sub(a)        
        contains
        subroutine sub(xx)
        integer :: xx(..)
        if(ubound(xx,1) /= 5) print*, "101"
        if(ubound(xx,2) /= 10) print*, "102"
        print*, "PASS"                       
        end subroutine
end        
