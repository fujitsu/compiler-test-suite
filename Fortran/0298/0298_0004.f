      real*4 a(50),b(50),c(50),e(50),f(50)
      equivalence  (a,e),(c(1),f(1))
      data  a,b,c/50*1.,50*2.,50*3./,nn/49/
c
      do 10 i=2,nn
        c(i)=c(i)+b(i)
        a(i)=float(i)
        call  sub(a(1))
        b(i+1)=a(i)+c(1)
  10  continue
c
      do 20 i=1,nn
        b(i)=a(i)+e(i)
        f(1)=f(1)+b(i)
        call  sub(f(i+1))
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
