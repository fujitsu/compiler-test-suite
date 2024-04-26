      integer a(1000,2)

      do j=1,2
        do i=1,1000
          a(i,j)=(j-1)*2+i
        end do
      end do

      do j=1,2
        do i=1,1000
          if (a(i,j).ne.((j-1)*2+i)) stop 'ng'
        end do
      end do

      print *,'ok'
      end
