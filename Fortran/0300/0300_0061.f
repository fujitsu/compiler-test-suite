                parameter(n=10000)
                real*8 a(n),b(n)
                do i=1,n
                  b(i) = i
                enddo                
                call sub(a,b,n)
                print *,a(1)
                print *,a(n)
                end

                subroutine sub(a,b,n)
                real*8 a(n),b(n)
                do i=1,n,33
                  a(i) = b(i)
                enddo
                end
