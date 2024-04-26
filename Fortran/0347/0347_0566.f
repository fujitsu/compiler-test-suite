       real*4  a(20),b(20),c(20)
       logical l(20)
       data  a,b,c/60*1./,nn/18/
       data  l/10*.false.,10*.true./
       do 100 j=1,nn
       do 10 i=1,18
         x=a(i)+b(i)
         if (l(i)) goto 10
         x=x+a(i)
         x=x+b(i)
         c(i)=x
 10   continue
       do 20 i=1,18
        x=b(i)*2.
        y=c(i)*2.
        if (l(i)) then
         x=x+a(i)-c(i)
         x=x+b(i)+c(i)
         x=x+c(i)-a(i)
        else
         y=y+c(i)-a(i)
         y=y+c(i)+b(i)
         y=y+c(i)-a(i)
        endif
        a(i)=x
        b(i)=y
 20   continue
      do 30 i=1,18
        x=a(i)/2.
        y=b(i)*2.
        x=amax1(x,a(i))
        y=amin1(y,a(i))
        x=amax1(x,c(i))
        y=amin1(y,b(i))
        c(i)=c(i)+x
        b(i)=b(i)+y
 30   continue
 100  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
