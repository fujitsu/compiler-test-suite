      program main
      real*4  a(20,20,20),b(20,20,20),c(20,20,20)
      data  a,b,c/8000*1.,8000*2.,8000*3./,n/10/,x/1./

      do 10 i=1,n
       x = float(i)
       do 20 j=1,20
         y = a(i,j,20)-x
        do 20 k=1,20
         a(i,j,k) = b(i,j,k)*2.-y
         x = y-c(i,j,k)
         c(i,j,k) = x*b(i,j,k)
  20    continue
  10  continue

      write(6,99) ' a= ',(((a(i,j,k),i=1,5),j=1,5),k=1,5)
      write(6,99) ' c= ',(((c(i,j,k),i=1,5),j=1,5),k=1,5)
 99   format(a,(4f14.7))
      stop
      end
