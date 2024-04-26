            parameter(n=100)
            real*8 a(n,n,n),b(n,n),c(n)
            c=2
            b=3
            call sub(a,b,c,n)
            print *,a(1,1,1)
            print *,a(100,100,100)
            end


            subroutine sub(a,b,c,n)
            real*8 a(n,n,n),b(n,n),c(n)

            do k=1,n
              c(k) = k
              do j=1,n
                b(j,k) =j
                do i=1,n
                  a(i,j,k) = i + b(i,j) + c(i)
                enddo
              enddo
            enddo
            end
