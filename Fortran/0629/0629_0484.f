        subroutine sub1(j)
        dimension a(1000)
        do i=1,1000
          a(i) = i
          j=a(i)
        end do
        end

        call sub1(ii)
        print *,ii
        end
