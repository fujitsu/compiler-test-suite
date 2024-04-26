      logical*1 ::a(0:100)=.false.,c(1)
      logical*4 ::b(0:100)=.true., d(1)

      c(1)=all(a)
      if (c(1).neqv.a(0))      stop 'ng' 

      d(1)=all(b)
      if (d(1).neqv.b(0))      stop 'ng' 
      print *,'ok'
      end
