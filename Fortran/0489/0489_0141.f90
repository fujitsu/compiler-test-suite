         integer :: arr(3,4)
         call sub(arr,arr)
               print*,"pass"
         contains
         subroutine sub(x2,x)
                 integer :: x(..)
                 integer :: x2(:,:)
                 integer :: y(5)
                 integer :: z(5)
                 y = 40
                z = 40
                y(shape(x)) = 3
               z(shape(x2)) = 3
               if(any(shape(x) .ne. [3,4])) print*,"121"
               if(any(y .ne. [40,40,3,3,40])) print*,"122",y
               if(any(z .ne. [40,40,3,3,40])) print*,"123"
               end subroutine
               end
