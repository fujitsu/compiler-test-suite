      program main
      real*4  a(20,20),b(20,20),c(20,20)
      logical*4 l4(10)
      data  a,b,c/400*1.,400*2.,400*3./,n/10/
      data  l4/.false.,.true.,7*.false.,.true./

      do 10 i=1,n
       if ( l4(i) ) go to 50
       do 20 j=1,20
        do 20 k=1,20
         a(j,k)= a(j,k)+b(k,j)*c(k,j)
  20   continue
  50   continue
       b(i,i)= a(1,i)
  10  continue

      write(6,*) ' a= ',((a(i,j),i=1,10),j=1,5)
      write(6,*) ' b= ',((b(i,j),i=1,10),j=1,5)
      stop
      end
