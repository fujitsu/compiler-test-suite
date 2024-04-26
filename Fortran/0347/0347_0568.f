       implicit real*8(x-z)
       real*8  a(20),b(20),c(20)
       logical l(20)
       data  a,b,c/20*1.d0,20*2.d0,20*3.d0/,nn/18/
       data  l/10*.false.,10*.true./
       do 100 j=1,nn
       x=0.d0
       y=0.d0
       z=0.d0
       do 10 i=1,18
         if (l(i)) then
           a(i)=a(i)+b(i)
         else
           c(i)=c(i)+b(i)
         endif
         x=x+a(i)
         y=dmax1(y,c(i))
         x=x+b(i)
         y=dmax1(y,b(i))-c(i)
         if (l(i)) then
           z1=z+a(i)-c(i)
           b(i)=b(i)+1.d0
           z2=z1+b(i)+c(i)
           b(i)=b(i)+c(i)
           z=z2+c(i)-a(i)
         else
           a(i)=a(i)+1.d0
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
