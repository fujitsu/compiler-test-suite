        parameter(n=10000000)
        integer*8 a(n)
         call sub(a,n)
        print *, a(10)
        end

        subroutine sub(a,n)
        integer*8 a(n)

        do i=1,n
           a(i) = i
        enddo
        end
