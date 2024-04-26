      integer*1 ::a(0:100)=(/(i,i=100,0,-1)/)
      integer*1 ::b(0:100)=z'80', c

      c=a(0)
      do i=1,100
        c=min(c,a(i))
      end do

      if (c.ne.a(100))      stop 'ng' 

      c=b(0)
      do i=1,100
        c=min(c,b(i))
      end do

      if (c.ne.b(100))      stop 'ng' 
      print *,'ok'
      end
