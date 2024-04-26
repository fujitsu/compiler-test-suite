        parameter(n=1000)
        real*8 a(n,n)
         call sub(a,n)
        print *, a(10,10)
        end

        subroutine sub(a,n)
        real*8 a(n,n)

        do j=1,n
          do i=1,n
             a(i,j) = i+j
          enddo
        enddo
        end
