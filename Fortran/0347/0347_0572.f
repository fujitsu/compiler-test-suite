      real*4 a(20),b(20),c(20)
      data  a,b,c/60*1./,nn/18/
      do 10 i=2,nn,2
        b(i)=float(i)
        c(i-1)=float(i)
 10   continue
      rx=1.

      do 20 i=2,nn
        rx = rx*b(i)
        a(i)=a(i)+sqrt(rx)
 20   continue
      rx=0.

      do 30 i=2,nn
        rx=rx+c(i)
        b(i)=b(i-1)+sin(rx)
 30   continue
      write(6,1) a
      write(6,1) b
  1   format(5e15.6)
      stop
      end
