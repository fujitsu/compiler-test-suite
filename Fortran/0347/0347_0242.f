      program main
      real*4  a(50),b(50),c(50),d(50)
      data  a,b/50*1.0,50*2.0/,nn/45/
      data  c,d/50*3.0,50*4.0/
      do 10 i=2,nn
        do 20 j=2,i
          b(j)=c(j)+a(j)
  20    continue
        a(i)=a(i)+b(i)
  10  continue
      do 30 i=nn,2,-1
        do 40 j=2,i
          a(j)=b(j)+d(j)
  40    continue
        d(i)=c(i)+a(i)
  30  continue
      do 50 i=2,nn
        do 60 j=nn,i,-1
          d(j)=b(j)+c(j)
  60    continue
        c(i)=a(i)+d(i)
  50  continue
      do 70 i=nn,2,-1
        do 80 j=nn,i,-1
          c(j)=d(j)+b(j)
  80    continue
        b(i)=c(i)+a(i)
  70  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
