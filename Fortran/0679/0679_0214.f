      program main
      real*4  a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      do 10 i=1,15
       do 10 j=2,20
         a(i,i) = a(i,i)+b(i,j)*c(i,j)
         b(i,j) = b(i,j)-a(j,i+1)*2.
  10  continue
      do 20 i=1,15
       do 20 j=1,19
         a(j,j) = c(i,j)+b(i,j+1)
         b(i,j) = b(i,j)+c(i,j)*a(i+1,j+1)
  20  continue
      write(6,*) ' a= ',((a(i,j),i=1,10),j=1,5)
      write(6,*) ' b= ',((b(i,j),i=1,10),j=1,5)
      stop
      end
