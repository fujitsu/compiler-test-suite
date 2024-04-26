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
          print *,c(80)
          print *,d(1)
          end

          subroutine sub(a,b,c,d,n)
          real*8 b(n),c(n),d(n)
          integer a(n)

          do i=1,n-1
            if(i>50) then
              c(i)=b(a(i))
            endif
              d(i)=b(a(i)+1)
          enddo
          end
