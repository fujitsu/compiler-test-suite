        integer :: arr(1,1,1,1)
        arr =10
         call sub(arr,arr)
        contains
        subroutine sub(x,x2)
                 integer :: x(..)
                integer :: x2(:,:,:,:)
                integer :: y(5)
                integer :: z(5)
                integer :: a(5)
                integer :: b(5)
                y = 40
                z = 40
                a = 40
                b = 40
                y(shape(x)) = 3
                z(shape(x2)) = 3
                a(shape(shape(x))) = 3
                b(shape(shape(x2))) = 3
                if(any(shape(x) .ne. [1,1,1,1])) print*,"121"
                if(any(shape(shape(x)) .ne. [4])) print*,"122"
                if(any(y .ne. [3,40,40,40,40])) print*,"123",y
                if(any(z .ne. [3,40,40,40,40])) print*,"124",z
                if(any(a .ne. [40,40,40,3,40])) print*,"123",y
                if(any(b .ne. [40,40,40,3,40])) print*,"124",z
                print*,"Pass"
                end subroutine
               end
       

