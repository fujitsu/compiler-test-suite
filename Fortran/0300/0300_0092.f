        parameter(n=10000000)
        real*8 a(n)
        a=2
         call sub(a,n)
        print *, a(10)
        end

        subroutine sub(a,n)
        real*8 a(n)

        do i=1,n
           a(i) = a(i) + i
        enddo
        end
