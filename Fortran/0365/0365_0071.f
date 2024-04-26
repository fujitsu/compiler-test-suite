      integer a(1000),b(1000)
     
      do i=1000,1,-2
       a(i)=i
      end do
      do i=1,1000,2
       b(i)=i
      end do

      do i=1000,1,-2
       if (a(i).ne.i)   stop 'ng'
      end do
      do i=1,1000,2
       if (b(i).ne.i)   stop 'ng'
      end do

      print *,'ok'
      end
