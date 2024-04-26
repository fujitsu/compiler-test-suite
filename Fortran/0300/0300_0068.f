          parameter(n=100000)
          real*8 a(n),g(n),e(n),f(n)
          integer*4 c(n),b(n),d(n)

          do i=1,n
            a(i) = 0
            b(i) = i
            c(i) = i
            d(i) = i
            e(i) = i
            f(i) = i
            g(i) = 0
          enddo
 
          call sub(a,b,c,d,e,f,g,n)
          print *,a(1)
          print *,a(n)
          print *,g(1)
          print *,g(n)
          end

          subroutine sub(a,b,c,d,e,f,g,n)
          real*8 a(n),g(n),e(n),f(n)
          integer*4 c(n),b(n),d(n)

          do i=1,n
            a(i)  = e(d(c(b(i))))
            g(i) =  f(d(c(b(i))))
          enddo

          end
