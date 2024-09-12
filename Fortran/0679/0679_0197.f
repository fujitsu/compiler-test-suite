      program main
      real*4  a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./,n/5/

      do 10 i=1,15
       do 10 j=1,n
         a(i,j)=a(i+n,j+n)+b(i,j)*c(i,j)
  10  continue

      write(6,*) ' a= ',((a(i,j),i=1,5),j=1,5)
      stop
      end
