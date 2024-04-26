      real*4  a(20,20),b(20,20),c(20,20)
      data  a,b,c/1200*1./,nn/20/
      n=1
      do 10 j=1,n
       do 10 i=1,10
         a(i,j)=b(i,j)+c(i,j)
  10  continue
      n=n+20
      n=n-nn
      do 20 j=1,n
       do 20 i=1,10
         b(i,j)=a(i,j)+c(i,j)
  20  continue
      write(6,*) a
      write(6,*) b
      stop
      end
