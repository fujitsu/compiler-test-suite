      integer a(10,1000,10)
     
      do i=1,10
        do j=1,1000
          do k=1,10
            a(i,j,k)=1
          end do
        end do
      end do

      do i=1,10
        do j=1,1000
          do k=1,10
            if (a(i,j,k).ne.1) stop 'ng'
          end do
        end do
      end do
      print *,'ok'
      end
