      real*4  a(20,20),b(20,20),c(20,20)
      data  a,b,c/1200*1./,nn/20/
      do 10 j=1,10
       do 10 i=1,10
         a(i,j)=b(i,j)+c(i,j)
  10  continue
      do 20 j=1,9
       do 20 i=1,10
         b(i,j)=a(i,j)/c(i,j)
  20  continue
      do 30 j=1,nn
       do 30 i=1,10
         c(i,j)=b(i,j)*2.+a(i,j)
  30  continue
      do 40 j=1,3
       do 40 i=1,10
         a(i,j)=b(i,j)+c(i,j)
  40  continue
      write(6,*) a
      write(6,*) b
      stop
      end
