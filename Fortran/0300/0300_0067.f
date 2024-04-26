          parameter(n=1000,m=1)
          real*8 a(n,n),b(n,n)
          integer*4 c(n),d(n),e(n),f(n),g(n)

          do j=1,n
          do i=1,n
            a(i,j) = 0
            b(i,j) = i+j
          enddo
          enddo
          do i=1,n
            c(i) = i
            d(i) = i
            e(i) = i
            f(i) = i
            g(i) = i
          enddo
 
          call sub(a,b,c,d,e,f,g,n,m)
          print *,a(1,1)
          print *,a(n,n)
          end


          subroutine sub(a,b,c,d,e,f,g,n,m)
          real*8 a(n,n),b(n,n)
          integer*4 c(n),d(n),e(n),f(n),g(n)


          do j=1,n,m
            do i=1,n,m
              a(i,j)= b(c(e(i)),d(f(g(i))))
            enddo
          enddo

          end
