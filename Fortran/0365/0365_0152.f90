      logical*1 ::a(0:100)=.false.,c(1)
      logical*4 ::b(0:100)=.true., d(1)
      call sub1(a,c)
      call sub2(b,d)
      if (c(1).neqv.a(0))      stop 'ng' 
      if (d(1).neqv.b(0))      stop 'ng' 
      print *,'ok'
      end

      subroutine sub1(a,c)
      logical*1 a(0:100),c(1)

      c(1)=any(a)
      end

      subroutine sub2(b,d)
      logical*4 ::b(0:100),d(1)
      d(1)=any(b)
      end
