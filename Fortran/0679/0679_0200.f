      program main
      real*4  a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./,n/10/

      do 10 i=1,n
       do 20 j=1,20
        do 20 k=1,20
         a(j,k) = a(j,k)+b(j,k)*c(j,k)
  20   continue

       do 30 j=1,20
        do 30 k=1,20,2
         b(j,k) = a(j,k)*c(j,k)-b(j,k)
  30   continue
  10  continue

      write(6,*) ' a= ',((a(i,j),i=1,10),j=1,5)
      write(6,*) ' b= ',((b(i,j),i=1,10),j=1,5)
      stop
      end
