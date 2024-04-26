        parameter(n=10000000)
        real*8 a(n),x
        x=0
        a=2
         call sub(a,n,x)
        print *, x
        end

        subroutine sub(a,n,x)
        real*8 a(n),x

        do i=1,n
           x = x + a(i)
        enddo
        end
