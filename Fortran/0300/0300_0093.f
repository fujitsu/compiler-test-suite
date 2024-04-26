        parameter(n=10000000)
        real*8 a(n),x
        do i=1,n
          a(i) = i
        enddo
        x=0
         call sub(a,n,x)
        print *, x
        end

        subroutine sub(a,n,x)
        real*8 a(n),x

        do i=1,n
           x = x + a(i)
        enddo
        end
