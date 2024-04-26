      integer ::x,y=1
      equivalence (x,y)
      integer ::a(1000),b(1000)

      do i=1,1000
        a(i)=x
        b(i)=x
      end do

      do i=1,1000
       if (a(i).ne.1)   stop 'ng'
       if (b(i).ne.1)   stop 'ng'
      end do
      print *,'ok'
      end
