integer :: arr(3,4)
call sub(arr,arr)
        contains
        subroutine sub(x1,x2)
        integer :: x1(..)
        integer :: x2(:,:)
        integer :: y(3)
        integer :: r(3)


        y = size(ubound(x1))
        r = size(ubound(x2))

        if(any(y .ne. r)) print*, 101
        print*, "PASS"
        end subroutine
        end
