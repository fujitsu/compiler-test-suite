      integer ::a(1000)=0,b(1000)=1,x,y
      equivalence (x,y)

      do i=1,1000
        x=a(i)
        y=b(i)
      end do

      if (x.ne.1)   stop 'ng'
      if (y.ne.1)   stop 'ng'
      print *,'ok'
      end
