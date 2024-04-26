      integer:: a(1000),b,c
      b=0
      do i=1,1000,1
        a(i)=1
        b=b+a(i)
        c=a(i)
      end do

      do i=1,1000
        if (a(i).ne.1) stop 'ng'
      end do
      if (b.ne.1000)   stop 'ng'
      if (c.ne.1)      stop 'ng'
      print *,'ok'
      end
