      real*4  a(20),b(20),c(20)
      integer*4 l(20)
      data  a,b/20*1.,20*2./,nn/19/
      data  c/20*3./
      do 5 i=1,20
  5     l(i)=i
      do 10 i=2,nn,2
        a(i)=a(i)+b(i)
        b(i)=float(i)
  10  continue
      rx=0.
      do 20 i=2,nn+1
        nx=l(i)-1
        a(nx)=b(i)+b(l(i))
        rxx=a(nx)+c(i)
        if (rxx.gt.rx) then
          rx=rxx
        endif
  20  continue
      write(6,*) 'rx= ',rx
      s=0.
      x=0.
      do 30 i=2,nn
        t1=s+a(i)
        s =t1+c(i)
        t2=amax1(x,b(i))
        x =amax1(t2,c(i))
  30  continue
      write(6,*) a,s,x
      do 40 i=2,nn
        c(i)=c(i-1)*a(i)+b(i)
  40  continue
      write(6,*) c
      stop
      end
