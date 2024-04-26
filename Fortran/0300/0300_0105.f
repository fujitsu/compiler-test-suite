        parameter(n=1000)
        real*8 a(n,n),b(n,n)
        a=3
        b=2
         call sub(a,b,n)
        print *, a(10,10)
        print *, b(10,10)
        end

        subroutine sub(a,b,n)
        real*8 a(n,n),b(n,n)

        do j=1,n
          do i=2,n
             a(i,j) = i+j
             b(i,j) = a(i-1,j) + j
          enddo
        enddo
        end
