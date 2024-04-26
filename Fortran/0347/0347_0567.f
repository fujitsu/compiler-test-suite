       real*4  a(20),b(20),c(20)
       logical l(20)
       data  a,b,c/60*1./,nn/18/
       data  l/10*.false.,10*.true./
       do 100 j=1,nn
       x=0.
       y=0.
       z=0.
       do 10 i=1,18
         if (l(i)) then
           a(i)=a(i)+b(i)
         else
           c(i)=c(i)+b(i)
         endif
         x=x+a(i)
         y=amax1(y,c(i))
         x=x+b(i)
         y=amax1(y,b(i))-c(i)
         if (l(i)) then
           z=z+a(i)-c(i)
           b(i)=b(i)+1.
           z=z+b(i)+c(i)
           b(i)=b(i)+c(i)
           z=z+c(i)-a(i)
         else
           a(i)=a(i)+1.
         endif
         c(i)=c(i)+x
         b(i)=b(i)+y
 10    continue
       a(j)=a(j)+x
       b(j)=b(j)+y
       c(j)=c(j)+z
 100  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
