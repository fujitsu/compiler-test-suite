      real*4 a(50),b(50),c(50)
      integer*4 l(50)
      data  a,b,c/150*1./,nn/47/
      do 5 i=1,50
        l(i)=51-i
 5    continue
      do 10 i=2,nn
        a(i)=b(i)+c(i)
        b(i)=sqrt(a(i))+c(i)
 10   continue
      do 20 i=2,nn
        ix=l(i)
        b(i)=a(i)+c(i+1)
        c(i)=sin(b(i))-a(i)
 20   continue
      nx=1

      do 30 i=2,nn
        c(nx)=b(i)+c(nx)
        a(i)=cos(a(i))+b(i)
        nx=nx+1
 30   continue

      do 40 j=2,nn
       do 40 i=2,nn
         c(i)=a(j)+b(i)
         b(i-1)=sqrt(c(i))
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
