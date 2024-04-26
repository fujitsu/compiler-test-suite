      integer*1 ::a(0:100)=(/(i,i=0,100)/)
      integer*1 ::b(0:100)=z'80', c,d(1)

      c=a(0)
      do i=1,100
        c=max(c,a(i))
      end do

      if (c.ne.a(100))      stop 'ng' 

      d(1)=b(0)
      do i=1,100
        d(1)=max(d(1),b(i))
      end do

      if (d(1).ne.b(100))    stop 'ng' 
      print *,'ok'
      end
