      integer a(1000),b(10,1000)
     
      do i=1,1000
       a(i)=1
       do j=1,10
         b(j,i)=2
       enddo
      end do


      do i=1,1000
        if (a(i).ne.1) stop 'ng'
        do j=1,10
          if (b(j,i).ne.2) stop 'ng'
        end do
      end do
      print *,'ok'
      end
