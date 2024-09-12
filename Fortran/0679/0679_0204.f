      program main
      real*4  a(20,20,20),b(20,20,20),c(20,20,20)
      data  a,b,c/8000*1.,8000*2.,8000*3./,n/10/,x/1./

      do 10 i=1,n
       x = a(i,n,n)*2.
       y = b(i,n,n)+c(i,n,n)
       if ( x-y ) 20,30,40
  20     a(i,1,1) =x
         go to 10
  30   y=1.0
  40   b(i,n,n)=y
       do 50 j=1,20
        do 50 k=1,10
          b(i,j,k) = b(i,j,k)*a(i,j,k)-c(i,j,k)
  50   continue
  10  continue

      write(6,*) ' a= ',(((a(i,j,k),i=1,5),j=1,2),k=1,2)
      write(6,*) ' b= ',(((c(i,j,k),i=1,5),j=1,5),k=1,5)
      stop
      end
