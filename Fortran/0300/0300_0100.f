        parameter(n=10000000)
        integer*2 a(n)
         call sub(a,n)
        print *, a(10)
        end

        subroutine sub(a,n)
        integer*2 a(n)

        do i=1,n
           a(i) = i
        enddo
        end
