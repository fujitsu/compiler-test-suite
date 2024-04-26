      logical*1 ::a(0:100)=.false.,c(1)
      logical*4 ::b(0:100)=.true., d(1)

      c(1)=a(0)
      do i=1,100
        c(1)=c(1).and.a(i)
      end do

      if (c(1).neqv.a(0))      stop 'ng' 

      d(1)=b(0)
      do i=1,100
        d(1)=d(1).and.b(i)
      end do

      if (d(1).neqv.b(0))      stop 'ng' 
      print *,'ok'
      end
