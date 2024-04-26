      real*4 a(50),b(50),c(50)
      data  a,b,c/150*1./,nn/47/
      do 10 i=2,nn
        a(1)=b(i)+c(i)
        call  sub(a(1))
 10   continue
      do 20 i=2,nn
        b(i)=a(i)+c(i+1)
        call  sub(b(1))
 20   continue
      do 30 i=2,nn
        a(1)=b(i)+c(i)
        call  sub(a(i))
 30   continue
      do 40 i=2,nn
        c(1)=b(i)+a(i)
        call  sub(c(2))
 40   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
      subroutine  sub(x)
      x=x+sqrt(x)
      return
      end
