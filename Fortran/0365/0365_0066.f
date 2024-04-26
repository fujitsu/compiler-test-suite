      integer a(50)
     
      do i=1,50
       a(i)=1
      end do

      do i=1,50
        if (a(i).ne.1) stop 'ng'
      end do
      print *,'ok'
      end
