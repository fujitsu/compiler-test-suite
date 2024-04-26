      program main
      real*4 a(20),b(20),c(20)
      data  a,b,c/20*1.,20*2.,20*3./
      data  nn/3/,nx/18/
      do 100 ii=1,nn
        n1=ii+10
        n2=ii
        rx=0.
        ry=0.
        do 10 i=1,n1
          rx=rx+a(i)+b(i)
          ry=max(ry,b(i))
          rx=c(i)+rx
          ry=max(c(i),ry)
          a(i)=a(i)+b(i)
  10    continue
        write(6,*) rx
        write(6,*) ry
        do 20 i=n1,nn
          b(i)=b(ii)+c(i)+a(i)
  20    continue
        do 30 i=ii+1,20
          c(i)=b(i)+c(n2)*a(i)
  30    continue
 100  continue
      write(6,*) ' a= ', a
      write(6,*) ' b= ', b
      write(6,*) ' c= ', c

      do 40 ii=2,nn
       do 50 i=5,nx
         a(i)=a(i-1)+b(i)*c(ii)
  50   continue

       do 60 i=6,nx
         b(i)=b(i-1)+a(ii)*c(i)
  60   continue
  40  continue
      write(6,*) ' a= ', a
      write(6,*) ' b= ', b
      stop
      end
