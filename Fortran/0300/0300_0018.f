            parameter(n=100)
            real*8 a(n)
            a=0
            call sub(a,n)
            print *,a(1)
            end

            subroutine sub(a,n)
            real*8 a(n)

            do i=1,n,10
            a(i) = 5
            a(i+1) = 5
            a(i+2) = 5
            a(i+3) = 5
            a(i+4) = 5
            a(i+5) = 5
            a(i+6) = 5
            a(i+7) = 5
            a(i+8) = 5
            a(i+9) = 5
            enddo
            end
