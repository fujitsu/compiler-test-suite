      dimension a(10),b(10),c(10)
      real*8  q1(10),q2(10)
      data b/10*1.0/,c/10*2.0/ ,q1/10*0.0/,q2/10*3.0/
      data a/10*0.0/,n/5/
      do 10 j=1,10
        do 20 k= 1,10
          q1(n) = q2(n)
  20    continue
        do 30 i=1,8
          a(i) = b(i) + c(i)
          b(i+1) = a(i+1)
          c(i+1) = a(i+2) * b(i+2)
  30    continue
        s = 0.0
        do 40 i=1,8
          s = s + b(i)
          a(i+1) = c(i+1)
          c(i+1) = a(i+2) * b(i+2)
  40    continue
  10  continue
      write(6,*) q1
      write(6,*) s
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
