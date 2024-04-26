          parameter(n=100000)
          real*8 b(n),c(n),d(n)
          integer a(n)

          do i=1,n
            a(i) = i
            b(i) = i
            c(i) = i
            d(i) = i
          enddo

          call sub(a,b,c,d,n)
          print *,c(1)
          print *,c(n)
          print *,d(1)
          end

          subroutine sub(a,b,c,d,n)
          real*8 b(n),c(n),d(n)
          integer a(n),t

          do i=1,n-1
             t=a(i)
            if(i>50) then
              c(i)=b(t)
            endif
              d(i)=b(t+1)
          enddo
          end
