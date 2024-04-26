          parameter(n=100000)
          real*8 a(n),b(n)
          a=2
          b=3
          call sub(a,b,n)
          print *,a(1)
          print *,a(n)
          end

          subroutine sub(a,b,n)
          real*8 a(n),b(n)

          do i=1,n
            if(i>50) then
              a(i)=b(i)
            endif
          enddo
          end
