          parameter(n=100000)
          real*8 a(n),b(n)
          integer*4 c(n),d(n)

          do i=1,n
            a(i) = 0
            b(i) = i
            c(i) = i
            d(i) = i
          enddo
 
          call sub(a,b,c,d,n)
          print *,a(1)
          print *,a(n)
          end

          subroutine sub(a,b,c,d,n)
          real*8 a(n),b(n)
          integer*4 c(n),d(n)

          do i=1,n,2
            a(i) = b(c(d(i)))
            a(i+1) = b(c(d(i))+1)
          enddo

          end
