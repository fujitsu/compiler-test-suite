      integer*1 ::a(0:100)=(/(i,i=100,0,-1)/)
      integer*1 ::b(0:100)=z'80', c

      c=minval(a)
      if (c.ne.a(100))      stop 'ng' 

      c=minval(b)
      if (c.ne.b(100))      stop 'ng' 
      print *,'ok'
      end
