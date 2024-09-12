        integer :: arr(4,5)
        arr =10
         call sub(arr,arr)
        contains
        subroutine sub(x,x2)
                 integer :: x(4,5)
                integer :: x2(:,:)
                integer :: b(5,5)
                integer :: b2(5,5)
                b = 60
                b2 = 60
                b(shape(x),shape(x2)) = 4
                b2(shape(x2),shape(x)) = 4
                if(any(b.ne.b2))print*,"101"
                print*,"Pass"
                end subroutine
               end
       

