        integer :: arr(3,4,5)
        arr =10
         call sub(arr,arr)
        contains
        subroutine sub(x,x2)
                integer :: x(..)
                integer :: x2(:,:,:)
                integer :: y(5)
                integer :: z(5)
                integer :: a(5)
                integer :: b(5)
                integer :: c(5)
                integer :: d(5)
                integer :: e(5)
                integer :: f(5)
                integer :: g(5)
                integer :: h(5)
                integer :: i(5)
                integer :: j(5)
                y = 40
                z = 40
                a = 40
                b = 40
                c = 40
                d = 40
                e = 40
                f = 40
                g = 40
                h = 40
                i = 40
                j = 40
                y(shape(shape(x))) = 3
                z(shape(shape(x2))) = 3
                a(rank(x)) = 3
                b(rank(x2)) = 3
                c(lbound(x2)) = 3
                d(lbound(x)) = 3
                e(ubound(x2)) = 3
                f(ubound(x)) = 3
                g(size(x2,1)) = 3
                h(size(x,1)) = 3
                i(size(x2,3)) = 3
                j(size(x,3)) = 3
                if(any(shape(x) .ne. [3,4,5])) print*,"121"
                if(any(shape(shape(x)) .ne. [3])) print*,"122"
                if(any(y .ne. [40,40,3,40,40])) print*,"123",y
                if(any(z .ne. [40,40,3,40,40])) print*,"124",z
                if(any(a .ne. [40,40,3,40,40])) print*,"124",z
                if(any(b .ne. [40,40,3,40,40])) print*,"124",z
                if(any(c .ne. [3,40,40,40,40])) print*,"126",c
                if(any(d .ne. [3,40,40,40,40])) print*,"127",d
                if(any(e .ne. [40,40,3,3,3])) print*,"128",e
                if(any(f .ne. [40,40,3,3,3])) print*,"129",f
                if(any(g .ne. [40,40,3,40,40])) print*,"130",g
                if(any(h .ne. [40,40,3,40,40])) print*,"131",h
                if(any(i .ne. [40,40,40,40,3])) print*,"132",i
                if(any(j .ne. [40,40,40,40,3])) print*,"133",j
                print*,"Pass"
                end subroutine
               end
       

