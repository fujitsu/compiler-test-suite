integer :: arr(3,4)
call sub(arr,arr)
        contains
        subroutine sub(x,x1)
        integer :: x(..)
        integer :: x1(:,:)

        call sub2(size(ubound(x)),size(ubound(x1)))
        end subroutine
        subroutine sub2(p,q)
        integer :: p
        integer :: q
        if(p .ne. 2) print*,101
        if(q .ne. 2) print*,102
        print*, "PASS"
        end subroutine

        end
