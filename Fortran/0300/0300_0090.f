          parameter(n=100000)
          real*8 b(n),c(n)
          integer a(n),d(n)

          do i=1,n
            a(i) = i
            b(i) = i
            c(i) = i
            d(i) = i
          enddo

          call sub(a,b,c,d,n)
          print *,c(1)
          print *,c(n)
          end

          subroutine sub(a,b,c,d,n)
          real*8 b(n),c(n)
          integer a(n),d(n),t

          do i=1,n
            if(i>50) then
              t=a(i)
            else
              t=d(i)
            endif
            c(i)=b(t)
          enddo
          end
