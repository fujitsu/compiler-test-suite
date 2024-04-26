          parameter(n=100000)
          real*8 a(n),b(n),e(n),d(n),f(n),g(n)
          integer*4 c(n),h(n)

          do i=1,n
            a(i) = 0
            e(i) = 0
            f(i) = 0
            b(i) = i
            c(i) = i
            d(i) = i
            g(i) = i
            h(i) = i
          enddo
 
          call sub(a,b,c,d,e,f,g,h,n)
          print *,a(1)
          print *,a(n)
          end

          subroutine sub(a,b,c,d,e,f,g,h,n)
          real*8 a(n),b(n),e(n),d(n),f(n),g(n)
          integer*4 c(n),h(n)

          do i=1,n
            a(i) = b(c(i))
            e(i) = d(c(i))
            f(i) = g(h(c(i)))
          enddo

          end
