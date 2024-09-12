        parameter(n=20)
        real*8 a1(n),a2(n)
        integer*8 a3(n)

        a1=0
        a2=2
        a3=3
        call sub(a1,a2,a3,n)
        print *,a1(1)
        print *,a1(n)
        end

        subroutine sub(a1,a2,a3,n)
        real*8 a1(n),a2(n)
        integer*8 a3(n)
        
        do i=1,n
          a1(i)=a2(a3(i))
        enddo
        end

