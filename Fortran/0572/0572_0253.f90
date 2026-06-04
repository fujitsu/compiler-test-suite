integer :: arr(3,4)
call sub(arr,arr)
contains
subroutine sub(x,x1)
        integer :: x(..)
        integer :: x1(:,:)
        integer :: y(5),z(5)
        y=0
        z=0
        y(shape(x)) = 3
        z(shape(x1)) = 3


        if(any(y .ne. [0,0,3,3,0])) print*,101
        if(any(z .ne. [0,0,3,3,0])) print*,102
        print*,"PASS"
        end subroutine
        end
