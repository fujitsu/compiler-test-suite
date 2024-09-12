      program main
      real*8  a(20,20),b(20,20),c(20,20),dx,dy
      complex*16 cd1(10,10),cd2(10,10),cd3(10,10)
      data  a,b,c/400*1.d0,400*2.d0,400*3.d0/,n/20/
      data  cd1,cd2/100*(2.1d0,1.2d0),100*(5.d0,1.d0)/
      data  cd3/100*(3.2d0,1.0d0)/

      do 10 i=1,10
       do 10 j=1,10
         cd1(i,j) = cd2(i,j)*cd3(i,j)
         dx = dreal(cd1(i,j))
         dy = dimag(cd1(i,j))
         a(i,j) = a(i+1,j+1)*b(i,j)- dx
         b(i,j) = dy
  10  continue

      write(6,*) ' a= ',((a(i,j),i=1,5),j=1,5)
      write(6,*) ' b= ',((b(i,j),i=1,5),j=1,5)
      stop
      end
