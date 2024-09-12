      dimension a(10),b(10),c(10)
      real*8  q1(10),q2(10)
      data a/10*1.0/,b/10*2.0/,c/10*1.0/
      data q2/10*1.0/
      do 20 i=2,10
        s = sqrt(a(i)) + b(i)
        do 10 j=1,10
          q1(j) = q2(j)
  10    continue
        c(i) = c(i-1) + s
  20  continue
      write(6,*) c,' i = ',i
      write(6,*) q1
      stop
      end
