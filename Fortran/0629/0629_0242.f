          real a(10000)
          do i=1,10000
            a(i) = i
          end do
          do i=1,5
            a(i) = a(i) * i
          end do
          print *,a
          end
