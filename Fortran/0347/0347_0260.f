      real*4 a(50),b(50),c(50)
      data  a,b,c/150*1./,nn/47/
      do 10 i=2,nn
        a(1)=b(i)+c(i)
        call  sub(a(1),b(1))
        b(i)=a(i)+c(i)
 10   continue
      do 20 i=2,nn
        b(i)=a(i)+c(nn+2)
        call  sub(b(1),c(i))
        c(nn+1)=c(nn+1)+a(i)
 20   continue
      do 30 i=2,nn
        ix=i+2
        a(i)=b(i)+c(ix)
        call  sub(a(i),c(1))
        c(i)=b(ix)+a(2)
 30   continue
      do 40 i=2,nn
        c(1)=b(i)+a(i)
        call  sub(c(2),b(i))
        b(1)=b(1)+a(i)
 40   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
      subroutine  sub(x,y)
      z=y
      x=x+sqrt(y)
      y=y+sin(z)
      return
      end
