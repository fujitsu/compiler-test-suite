      integer ::x(10),y=1
      equivalence (x(10),y)
      integer ::a(1000),b(1000)

      do i=1,1000
        a(i)=x(10)
        b(i)=x(10)
      end do

      do i=1,1000
       if (a(i).ne.1)   stop 'ng'
       if (b(i).ne.1)   stop 'ng'
      end do
      print *,'ok'
      end
