      integer ::a(10)
      integer ::b(1000)

      a(1) =1
      a(10)=0

      do i=1,1000
        b(i) = a(1)
        a(10) = a(10) + b(i)
      end do

      do i=1,10
        if (b(i).ne.1)  stop 'ng'
      end do
      if (a(10).ne.1000)  stop 'ng'
      print *,'ok'
      end
