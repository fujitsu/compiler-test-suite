integer :: arr(3,4)
call sub(arr,arr)
        contains
        subroutine sub(x,x1)
        integer :: x(..)
        integer :: x1(:,:)
        integer :: y(3) , z(2)

        call sub2(lbound(x),lbound(x1))
        end subroutine
        subroutine sub2(p,q)
        integer :: p(2,1)
        integer :: q(2,1)

        if(any(p .ne. q)) print*,101
        print*,"PASS"
        end subroutine

        end
