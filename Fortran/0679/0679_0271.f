      real*8  q1(10),q2(10),q3(10)
      data q2/10*1.0/,q3/10*2.0/
      do 10 i=1,10
        q1(i) = q2(i) + q3(i)
  10  continue
      write(6,*) q1
      stop
      end
