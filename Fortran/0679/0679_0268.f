      real*8  q1(10),q2(10),q3(10)
      data    q2/10*3.0/
      do 20 k= 1,10
        q1(k) = q2(k)
  20  continue
      i = 2.0
      do 30 k= 1,10
        q3(k) = q1(i)
  30  continue
      write(6,*) q1
      write(6,*) q3
      stop
      end
