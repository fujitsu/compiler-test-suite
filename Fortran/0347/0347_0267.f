      real*4 a(50),b(50),c(50),e(50),f(50)
      equivalence  (a,e),(c(1),f(1),rx)
      data  a,b,c/50*1.,50*2.,50*3./,nn/49/
      do 10 i=2,nn
        c(i)=c(i)+b(i)
        rx=float(i)
        call  sub(rx)
        b(i+1)=a(i)+f(i)
  10  continue
      do 20 i=1,nn
        b(i)=a(i)+e(i)
        f(i+1)=f(1)+b(i)
        call  sub(rx)
  20  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
      subroutine sub(x)
      x=x+1.
      return
      end
