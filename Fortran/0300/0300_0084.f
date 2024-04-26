          parameter(n=100000)
          real*8 a(n),b(n)
          integer*4 m,o
          m=100
          o=200
          a=2
          b=3
          call sub(a,b,n,m,o)
          print *,a(1)
          print *,a(150)
          print *,a(n)
          end

          subroutine sub(a,b,n,m,o)
          real*8 a(n),b(n)
          integer*4 m,o

          do i=1,n
            a(i) = b(i)
            if(i < m) then
              a(i) = b(i+3)
            else if(i < o) then
              a(i) = b(i+5)
            endif
          enddo
          end

