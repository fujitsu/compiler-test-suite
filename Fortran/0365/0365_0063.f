      integer a(1000),b(1000),c(1000)
     
      do i=1,1000
       a(i)=1
      end do

      do i=1,1000
       b(i)=2
      end do
      
      do i=1,1000
       c(i)=3
      end do

      do i=1,1000
        if (a(i).ne.1) stop 'ng'
        if (b(i).ne.2) stop 'ng'
        if (c(i).ne.3) stop 'ng'
      end do
      print *,'ok'
      end
