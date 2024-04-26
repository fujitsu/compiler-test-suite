      integer a(1001),b(1002),c(1003)
     
      do i=1,1001
       a(i)=1
      end do

      do i=1,1002
       b(i)=2
      end do
      
      do i=1,1003
       c(i)=3
      end do

      do i=1,1000
        if (a(i).ne.1) stop 'ng'
        if (b(i).ne.2) stop 'ng'
        if (c(i).ne.3) stop 'ng'
      end do
      print *,'ok'
      end
