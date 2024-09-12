        integer :: arr(4,5)
        arr =10
         call sub(arr,arr)
        contains
        subroutine sub(x,x2)
                 integer :: x(4,5)
                integer :: x2(4,5)
                integer :: z(5,5)
                integer :: b(5,5)
                z = 60
                b = 60
                b(shape(x2),shape(x2)) = 4
                z(shape(x),shape(x)) = 4
                if(any(b.ne.z))print*,"101"
                print*,"pass"
                end subroutine
               end
       

