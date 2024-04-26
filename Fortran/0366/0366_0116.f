      common/com/a,c(1000),d(1000)

      c=2.0
      do i=1,1000
        a=c(i)+1.0
        d(i)=a
      end do
      do i=1,1000
        if (c(i).ne.2.0)   stop 'ng'
        if (d(i).ne.3.0)   stop 'ng'
      end do
      print *,'ok'
      end
