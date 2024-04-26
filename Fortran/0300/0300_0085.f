          parameter(n=100000)
          real*8 a(n),b(n),c(n)
          a=2
          b=3
          call sub(a,b,c,n)
          print *,a(1)
          print *,a(100)
          print *,a(n)
          print *,c(1)
          end

          subroutine sub(a,b,c,n)
          real*8 a(n),b(n),c(n)

          do i=1,n-1
            if(i>50) then
              a(i)=b(i)
            endif
              c(i)=b(i+1)
          enddo
          end
