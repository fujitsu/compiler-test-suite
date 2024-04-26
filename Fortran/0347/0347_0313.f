      real*4  a(20),b(20),c(20)
      data  a,b,c/60*1./
      x=0.
      do 10 i=1,20
        x=x+a(i)
        x=x+b(i)
        call sub(x)
 10   continue
      a(20)=x
      x=0.
      do 20 i=1,19
        a(i)=b(i)+c(i)
        x=x+c(i)
        x=x+a(i)
        write(6,*) x
 20   continue
      write(6,*) x
      write(6,*) a
      stop
      end
      subroutine sub(xx)
      xx=xx*2.
      return
      end
