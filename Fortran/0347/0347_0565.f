       real*8  a(20),b(20),c(20)
       logical l(20)
       data  a,b,c/60*1./,nn/18/
       data  l/10*.false.,10*.true./
       do 100 j=1,nn
       x=0.
       do 10 i=1,18
         if (l(i)) goto 10
         x=x+a(i)
         x=x+b(i)
 10   continue
      c(j)=x
      x=0.
      y=0.
       do 20 i=1,18
        if (l(i)) then
         x=x+a(i)-c(i)
         x=x+b(i)+c(i)
         x=x+c(i)-a(i)
        else
         y=y+c(i)-a(i)
         y=y+c(i)+b(i)
         y=y+c(i)-a(i)
        endif
 20   continue
      a(j)=x
      b(j)=y
      x=0.
      y=100.
      do 30 i=1,18
         x=amax1(x,a(i))
         x=amax1(x,c(i))
         y=amin1(y,a(i))
         y=amin1(y,b(i))
 30   continue
      a(j)=y
      c(j)=x
 100  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
