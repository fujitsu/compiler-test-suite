          parameter(n=100000)
          real*8 a(n),b(n),c(n),d(n),e(n)
          a=2
          b=3
          c=3
          d=4
          e=5
          call sub(a,b,c,d,e,n)
          print *,a(1)
          print *,a(80)
          print *,c(1)
          print *,c(80)
          print *,d(1)
          print *,e(1)
          end

          subroutine sub(a,b,c,d,e,n)
          real*8 a(n),b(n),c(n),d(n),e(n)

          do i=1,n-3
              e(i)=b(i+1)
            if(i>50) then
              a(i)=b(i+3)
            else
              c(i)=b(i)
            endif
              d(i)=b(i+2)
          enddo
          end
