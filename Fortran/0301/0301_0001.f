           parameter(n=100)
           real*8 a(n),b(n)

           do i=1,n
            b(i) = i
           enddo

           call sub(a,b,n)
           print *,a(1)
           print *,a(100)
           end

           subroutine sub(a,b,n)
           real*8 a(n),b(n)
           do i=1,n
             a(i) = b(i)
           enddo
           end
