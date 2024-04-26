      real*4  a(20),b(20),c(20)
      data  a,b,c/60*1./
      x=0.
      do 10 i=1,20
        x=a(i)+b(i)
        x=sin(x)+c(i)
        x=cos(x)+a(i)
        a(i)=x
 10   continue
      x=0.
      do 20 i=1,19
        x=x+b(i)+c(i)
        x=sqrt(x)+c(i)
        x=sin(x)+a(i)
        x=x+b(i)
 20   continue
      write(6,*) x
      write(6,*) a
      stop
      end
