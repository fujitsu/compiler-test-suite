        parameter(n=1000)
        COMPLEX*8 a(n)
        a=(5,5)
         call sub(a,n)
        print *, a(10)
        end

        subroutine sub(a,n)
        COMPLEX*8 a(n)

        do i=1,n
           a(i) = i
        enddo
        end
