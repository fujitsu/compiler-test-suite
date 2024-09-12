      dimension a(10),b(10),c(10),d(10),e(10)
      real*8  q1(10),q2(10),q3(10)
      data a/10*0./,d/10*0./
      data b/10*1.0/,c/10*2.0/,e/10*5.0/,q2/10*6.0/,q3/10*7.0/
      data n/5/
      q1 = 0
      do 10 i=2,9
        a(i) = b(i) + c(i)
        c(i+1) = b(i) + a(i+1)
        d(i) = b(i) * c(i)
        a(i) = a(i-1) + c(i)
        e(n) = e(n) + a(i)
        q1(i) = q2(i) + q3(i)
        b(i) = a(i-1) + c(i)
        e(i) = e(n) + q1(i)
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      write(6,*) e
      write(6,*) q1
      stop
      end
