                parameter(n=10000,m=1)
                real*8 a(n),b(n)
                do i=1,n
                  b(i) = i
                enddo                
                call sub(a,b,n,m)
                print *,a(1)
                print *,a(n)
                end

                subroutine sub(a,b,n,m)
                real*8 a(n),b(n)
                do i=1,n,m
                  a(i) = b(i)
                enddo
                end
