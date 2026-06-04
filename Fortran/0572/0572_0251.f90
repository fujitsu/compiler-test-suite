integer :: arr(3,4)
call sub(arr,arr)
        contains
        subroutine sub(x1,x2)
        integer :: x1(..)
        integer :: x2(:,:)
        integer :: p(5,5),q(5,5)

        p = size(shape(x1))
        q = size(shape(x2))

        if(any(p .ne. q)) print*, 101
        print*, "PASS"
        end subroutine
        end
