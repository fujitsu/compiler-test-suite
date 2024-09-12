integer :: arr(3)=[1,2,3]
call sub(arr,4)        
        contains
        impure subroutine sub(x,n)
        integer,intent(in) :: n
        integer ,intent(in) :: x(3)
        if(any((x) .ne. [1,2,3])) print*,101
        if(n /= 4) print*,102
        print*,"PASS"
        end subroutine
        end
