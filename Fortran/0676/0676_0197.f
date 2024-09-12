        parameter(m=201)
        parameter(n=20)
        real*8 a1(m),a2(m),a3(m)

        a1=0
        a2=2
        a3=3
        call sub(a1,a2,a3,n,m)
        print *,a1(1)
        print *,a1(n)
        end

        subroutine sub(a1,a2,a3,n,m)
        real*8 a1(m),a2(m),a3(m)
        
        j=1
        do i=1,n
          a1(i)=a2(i)+a3(j)
          j=j+10
        enddo
        end

