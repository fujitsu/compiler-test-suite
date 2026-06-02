        integer :: arr(2:4,4:7,3:7)
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
                integer :: c(7)
                integer :: d(7)
                integer :: e(7)
                integer :: f(7)
                integer :: g(7)
                integer :: h(7)
                integer :: i(7)
                integer :: j(7)
                integer :: k(7)
                integer :: l(7)
                integer :: m(7)
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
                 j=40
                k = 40
                l =40
                m = 40
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
                k(1:lbound(x,1)) = 3
                l(lbound(x,3):ubound(x,1)) = 3
                m(2:ubound(x,2)) = 3
                if(any(shape(x) .ne. [3,4,5])) print*,"121"
                if(any(shape(shape(x)) .ne. [3])) print*,"122"
                if(any(y .ne. [40,40,3,40,40])) print*,"123",y
                if(any(z .ne. [40,40,3,40,40])) print*,"124",z
                if(any(a .ne. [40,40,3,40,40])) print*,"124",z
                if(any(b .ne. [40,40,3,40,40])) print*,"124",z
                if(any(c .ne. [3,40,40,40,40,40,40])) print*,"126",c
                if(any(d .ne. [3,40,40,40,40,40,40])) print*,"127",d ,lbound(x)
                if(any(e .ne. [40,40,3,3,3,40,40])) print*,"128",e
                if(any(f .ne. [40,40,3,3,3,40,40])) print*,"129",f ,ubound(x)
                if(any(g .ne. [40,40,3,40,40,40,40])) print*,"130",g
                if(any(h .ne. [40,40,3,40,40,40,40])) print*,"131",h
                if(any(i .ne. [40,40,40,40,3,40,40])) print*,"132",i
                if(any(j .ne. [40,40,40,40,3,40,40])) print*,"133",j
                if(any(k .ne. [3,40,40,40,40,40,40])) print*,"134",k
                if(any(l .ne. [3,3,3,40,40,40,40])) print*,"135",l
                if(any(m .ne. [40,3,3,3,40,40,40])) print*,"136",m
                print*,"Pass"
                end subroutine
               end
       

