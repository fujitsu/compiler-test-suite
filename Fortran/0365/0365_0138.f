      integer ::x(1000)=1,y
      equivalence (x(1000),y)
      integer ::a(1000),b(1000)

      do i=1,1000
        a(i)=y
        b(i)=y
      end do

      do i=1,1000
       if (a(i).ne.1)   stop 'ng'
       if (b(i).ne.1)   stop 'ng'
      end do
      print *,'ok'
      end
