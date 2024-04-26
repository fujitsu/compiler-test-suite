      real*4  a(20,20),b(20,20),c(20,20),d(20)
      data   a,b,c/400*1.,400*2.,400*3./,n/1/,nn/15/
      data   d/20*4./
      do 10 i=1,nn
       do 20 j=1,20
         a(j,n) = b(j,i)+1.
  20   continue
       n = n+1
       do 30 j=1,20
        b(j,i) = a(j,n)+2.
  30   continue
  10  continue
      n=1
      do 40 i=1,nn
       b(1,n) = c(2,i)+1.*sin(b(10,n)/5.)
       do 50 k=10,20
         a(k,i)=a(k,i)+1.
  50   continue
       n = n+1
       b(3,n) = c(1,i)*2.+sqrt(d(i))
       do 60 j=2,20
        a(j,i) = 2.
  60   continue
  40  continue
      write(6,*) ' a= ',a
      write(6,*) ' b= ',b
      stop
      end
