      real*4  a(20,20),b(20,20),c(20,20)
      integer*4  l(20)
      data    a,b,c/400*1.,400*2.,400*3./,n/20/
      do 5 i=1,20
 5      l(i)=i
      do 10 i=2,n,2
       do 10 j=2,n-1,2
         a(j,i)=b(j+1,l(j))+c(j,i)
         b(j,i)=a(j+1,i)+c(j,i)
         c(l(j),i-1)=b(j-1,i)*a(j,i)
  10  continue
      write(6,*) ((a(i,j),i=1,10),j=1,10)
      write(6,*) ((b(i,j),i=1,10),j=1,10)
      write(6,*) ((c(i,j),i=1,10),j=1,10)
      stop
      end
