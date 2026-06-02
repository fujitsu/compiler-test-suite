integer :: arr(3,4)
call sub(arr,arr)
        contains
        subroutine sub(x,x1)
        integer :: x(..)
        integer :: x1(:,:)
        integer :: y(3) , z(2)

        call sub2(shape(x),shape(x1))
        end subroutine
        subroutine sub2(p,q)
        integer :: p(2)
        integer :: q(2)

        if(any(p .ne. [3,4])) print*,101
        if(any(q .ne. [3,4])) print*,102

        print*,"PASS"
        end subroutine

        end
