      real*4 a(20,20),b(20,20),c(20,20),x(20)
      data  a,b,c/1200*1./,nn/18/,x/20*2./
      do 10 i=1,nn
       do 10 j=2,nn
        do 10 k=2,nn
          a(k,j)=a(k,j)+b(k,j)*c(k,j)
 10   continue
      do 20 j=2,nn
       x(j)=0.
       do 20 i=2,nn
         x(j)=x(j)+a(i,j)
 20   continue
      do 30 j=2,nn
       rx=a(2,j)
       do 30 i=2,nn
         c(i,j)=b(i,j)+c(i,j)*rx
 30   continue
      do 40 j=2,nn
        c(nn,j)=0.
        do 40 i=1,nn
          b(i,j)=a(i,j)-c(i,j)*2.
 40   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
