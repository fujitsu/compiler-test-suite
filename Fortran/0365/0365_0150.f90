      integer*1 ::a(0:100)=(/(i,i=0,100)/)
      integer*1 ::b(0:100)=z'80', c,d(1)

      c=maxval(a)
      if (c.ne.a(100))      stop 'ng' 

      d(1)=maxval(b)
      if (d(1).ne.-128)    stop 'ng' 
      print *,'ok'
      end
