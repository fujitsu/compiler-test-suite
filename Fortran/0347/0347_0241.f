      program main
      real*4  a(50),b(50),c(50),d(50)
      data  a,b/50*1.0,50*2.0/,nn/45/
      data  c,d/50*3.0,50*4.0/
      do 10 i=2,nn
        a(i)=a(i)+b(i)
        do 10 j=i,nn
          b(j)=c(j)+a(j)
  10  continue
      do 20 i=2,nn
        d(i)=a(i)+c(i)
        do 20 j=i,2,-1
          c(j)=b(j)+d(j)
  20  continue
      do 30 i=nn,2,-2
        b(i)=a(i)+d(i)
        do 30 j=i,2,-1
          d(j)=c(j)+b(j)
  30  continue
      do 40 i=nn,2,-1
        c(i)=a(i)+b(i)
        do 40 j=i,nn
          a(j)=c(j)+d(j)
  40  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
