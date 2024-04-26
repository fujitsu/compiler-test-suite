C
C
      program testsb
C
      xx=2.
      x=2.
      call sub1(0+xx,x)
      xx=2.
      x=2.
      call sub1(+xx,x)
      xx=2.
      x=2.
      call sub1((xx),x)
      xx=2.
      x=2.
      call sub1(1*xx,x)
      xx=2.
      x=2.
      o=1
      call sub1(o*xx,x)
      xx=2.
      x=2.
      z=0
      call sub1(z+xx,x)
      xx=2.
      x=2.
      call sub1((0+xx),x)
      xx=2.
      x=2.
      call sub1(xx-xx+xx,x)
      end
      subroutine sub1(xin,y)
      y=xin+1.
      write(*,*)xin,y
      return
      end
