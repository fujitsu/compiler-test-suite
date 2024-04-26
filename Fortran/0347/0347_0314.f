      complex*8 a(20),b(20),c(20),x,y
      data  a,b,c/60*(1.,2.)/
      x=0.
      do 10 i=1,20
        x=a(i)+b(i)*c(i)
        y=x+b(i)
        call sub(x)
        x=y+c(i)
        a(i)=x
 10   continue
      do 20 i=1,19
        a(i)=b(i)+c(i)
        x=a(i)*2.
        y=x+c(i)
        x=x+a(i)
        write(6,*) y
        x=y+b(i)
        b(i)=x
 20   continue
      write(6,*) x
      write(6,*) a
      write(6,*) b
      stop
      end
      subroutine sub(xx)
      complex*8 xx
      xx=xx+(1.,2.)
      return
      end
