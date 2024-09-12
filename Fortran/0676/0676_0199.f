        parameter(n=20)
        real*8 a1(n),a2(n),a3(n),a4(n)

        a1=10
        a2=2
        a3=3
        a4=4
        call sub(a1,a2,a3,a4,n,10)
        print *,a1
        print *,a3
        end

        subroutine sub(a1,a2,a3,a4,n,m)
        real*8 a1(n),a2(n),a3(n),a4(n)
        
        do i=1,n
            a3(i)=a4(i)
          if(i<m) then
            a1(i)=a2(i)
          endif
        enddo
        end

