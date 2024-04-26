                parameter(n=10000)
                real*8 a(n),b(n)
                integer c(n)
                do i=1,n
                  a(i) = 0
                  b(i) = i
                  c(i) = i
                enddo                
                call sub(a,b,c,n)
                print *,a(1)
                print *,a(n)
                end

                subroutine sub(a,b,c,n)
                real*8 a(n),b(n)
                integer c(n)
                do i=1,n
                  a(i) = b(c(i))
                enddo
                end
