        real*4 a(10)/1,2,3,4,5,6,7,8,9,10/,s(10)/10*0/
        call sub2(a,s,10)
        end

        subroutine sub2(a,s,n)
        real*4 a(n),b(10),s(n)
        do i=1,n
          s(i)=a(i)
          b(i) = sin(a(i))
        enddo
        print *,b
        end
